/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : pcb_db

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 26/11/2020 09:31:47
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for batch_job_execution
-- ----------------------------
DROP TABLE IF EXISTS `batch_job_execution`;
CREATE TABLE `batch_job_execution`  (
  `JOB_EXECUTION_ID` bigint(0) NOT NULL,
  `VERSION` bigint(0) NULL DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(0) NOT NULL,
  `CREATE_TIME` datetime(0) NOT NULL,
  `START_TIME` datetime(0) NULL DEFAULT NULL,
  `END_TIME` datetime(0) NULL DEFAULT NULL,
  `STATUS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXIT_CODE` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_UPDATED` datetime(0) NULL DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`) USING BTREE,
  INDEX `JOB_INST_EXEC_FK`(`JOB_INSTANCE_ID`) USING BTREE,
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of batch_job_execution
-- ----------------------------
INSERT INTO `batch_job_execution` VALUES (1, 2, 1, '2020-11-19 15:40:03', '2020-11-19 15:40:03', '2020-11-19 15:40:03', 'COMPLETED', 'COMPLETED', '', '2020-11-19 15:40:03', NULL);
INSERT INTO `batch_job_execution` VALUES (2, 2, 2, '2020-11-19 15:43:19', '2020-11-19 15:43:19', '2020-11-19 15:43:19', 'COMPLETED', 'COMPLETED', '', '2020-11-19 15:43:19', NULL);
INSERT INTO `batch_job_execution` VALUES (3, 2, 3, '2020-11-19 15:57:05', '2020-11-19 15:57:05', '2020-11-19 15:57:06', 'COMPLETED', 'COMPLETED', '', '2020-11-19 15:57:06', NULL);
INSERT INTO `batch_job_execution` VALUES (4, 2, 4, '2020-11-19 16:06:42', '2020-11-19 16:06:42', '2020-11-19 16:06:43', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:06:43', NULL);
INSERT INTO `batch_job_execution` VALUES (5, 2, 5, '2020-11-19 16:27:49', '2020-11-19 16:27:49', '2020-11-19 16:27:50', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:27:50', NULL);
INSERT INTO `batch_job_execution` VALUES (6, 2, 6, '2020-11-19 16:31:28', '2020-11-19 16:31:28', '2020-11-19 16:31:28', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:31:28', NULL);
INSERT INTO `batch_job_execution` VALUES (7, 2, 7, '2020-11-19 16:36:52', '2020-11-19 16:36:53', '2020-11-19 16:36:53', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:36:53', NULL);
INSERT INTO `batch_job_execution` VALUES (8, 2, 8, '2020-11-19 16:39:17', '2020-11-19 16:39:18', '2020-11-19 16:39:18', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:39:18', NULL);
INSERT INTO `batch_job_execution` VALUES (9, 2, 9, '2020-11-19 16:43:11', '2020-11-19 16:43:11', '2020-11-19 16:43:11', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:43:11', NULL);
INSERT INTO `batch_job_execution` VALUES (10, 2, 10, '2020-11-19 16:47:42', '2020-11-19 16:47:42', '2020-11-19 16:47:43', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:47:43', NULL);
INSERT INTO `batch_job_execution` VALUES (11, 2, 11, '2020-11-19 16:49:14', '2020-11-19 16:49:14', '2020-11-19 16:49:14', 'COMPLETED', 'COMPLETED', '', '2020-11-19 16:49:14', NULL);
INSERT INTO `batch_job_execution` VALUES (12, 2, 12, '2020-11-19 17:10:01', '2020-11-19 17:10:01', '2020-11-19 17:10:01', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:10:01', NULL);
INSERT INTO `batch_job_execution` VALUES (13, 2, 13, '2020-11-19 17:11:36', '2020-11-19 17:11:36', '2020-11-19 17:11:36', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:11:36', NULL);
INSERT INTO `batch_job_execution` VALUES (14, 2, 14, '2020-11-19 17:15:41', '2020-11-19 17:15:41', '2020-11-19 17:15:41', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'3\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$3.doWithRetry(FaultTolerantChunkProcessor.java:370)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:329)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.d', '2020-11-19 17:15:41', NULL);
INSERT INTO `batch_job_execution` VALUES (15, 2, 15, '2020-11-19 17:18:11', '2020-11-19 17:18:11', '2020-11-19 17:18:11', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:18:11', NULL);
INSERT INTO `batch_job_execution` VALUES (16, 2, 16, '2020-11-19 17:19:29', '2020-11-19 17:19:29', '2020-11-19 17:19:29', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:19:29', NULL);
INSERT INTO `batch_job_execution` VALUES (17, 2, 17, '2020-11-19 17:22:22', '2020-11-19 17:22:23', '2020-11-19 17:22:27', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:22:27', NULL);
INSERT INTO `batch_job_execution` VALUES (18, 2, 18, '2020-11-19 17:22:49', '2020-11-19 17:22:49', '2020-11-19 17:22:53', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:22:53', NULL);
INSERT INTO `batch_job_execution` VALUES (19, 2, 19, '2020-11-19 17:23:31', '2020-11-19 17:23:31', '2020-11-19 17:23:32', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:23:32', NULL);
INSERT INTO `batch_job_execution` VALUES (20, 2, 20, '2020-11-19 17:28:51', '2020-11-19 17:28:51', '2020-11-19 17:28:54', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:28:54', NULL);
INSERT INTO `batch_job_execution` VALUES (21, 2, 21, '2020-11-19 17:30:40', '2020-11-19 17:30:40', '2020-11-19 17:30:40', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:30:40', NULL);
INSERT INTO `batch_job_execution` VALUES (22, 2, 22, '2020-11-19 17:31:04', '2020-11-19 17:31:04', '2020-11-19 17:31:04', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:31:04', NULL);
INSERT INTO `batch_job_execution` VALUES (23, 2, 23, '2020-11-19 17:31:35', '2020-11-19 17:31:35', '2020-11-19 17:31:35', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:31:35', NULL);
INSERT INTO `batch_job_execution` VALUES (24, 2, 24, '2020-11-19 17:32:25', '2020-11-19 17:32:25', '2020-11-19 17:32:26', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:32:26', NULL);
INSERT INTO `batch_job_execution` VALUES (25, 2, 25, '2020-11-19 17:33:09', '2020-11-19 17:33:09', '2020-11-19 17:33:09', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:33:09', NULL);
INSERT INTO `batch_job_execution` VALUES (26, 2, 26, '2020-11-19 17:34:28', '2020-11-19 17:34:29', '2020-11-19 17:34:30', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:34:30', NULL);
INSERT INTO `batch_job_execution` VALUES (27, 2, 27, '2020-11-19 17:44:31', '2020-11-19 17:44:31', '2020-11-19 17:44:32', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:44:32', NULL);
INSERT INTO `batch_job_execution` VALUES (28, 2, 28, '2020-11-19 17:52:23', '2020-11-19 17:52:23', '2020-11-19 17:52:25', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:52:25', NULL);
INSERT INTO `batch_job_execution` VALUES (29, 2, 29, '2020-11-19 17:53:40', '2020-11-19 17:53:40', '2020-11-19 17:53:40', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:53:40', NULL);
INSERT INTO `batch_job_execution` VALUES (30, 2, 30, '2020-11-19 17:54:19', '2020-11-19 17:54:19', '2020-11-19 17:54:20', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$5.recover(FaultTolerantChunkProcessor.java:434)\r\n	at org.springframework.retry.support.RetryTemplate.handleRetryExhausted(RetryTemplate.java:539)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:387)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate', '2020-11-19 17:54:20', NULL);
INSERT INTO `batch_job_execution` VALUES (31, 2, 31, '2020-11-19 17:55:56', '2020-11-19 17:55:56', '2020-11-19 17:55:57', 'FAILED', 'FAILED', 'org.springframework.batch.core.step.skip.SkipLimitExceededException: Skip limit of \'100\' exceeded\r\n	at org.springframework.batch.core.step.skip.LimitCheckingItemSkipPolicy.shouldSkip(LimitCheckingItemSkipPolicy.java:133)\r\n	at org.springframework.batch.core.step.skip.ExceptionClassifierSkipPolicy.shouldSkip(ExceptionClassifierSkipPolicy.java:70)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.shouldSkip(FaultTolerantChunkProcessor.java:519)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.checkSkipPolicy(FaultTolerantChunkProcessor.java:550)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.scan(FaultTolerantChunkProcessor.java:632)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.access$900(FaultTolerantChunkProcessor.java:56)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor$3.doWithRetry(FaultTolerantChunkProcessor.java:370)\r\n	at org.springframework.retry.support.RetryTemplate.doExecute(RetryTemplate.java:329)\r\n	at org.springframework.retry.support.RetryTemplate.execute(RetryTemplate.java:255)\r\n	at org.springframework.batch.core.step.item.BatchRetryTemplate.execute(BatchRetryTemplate.java:217)\r\n	at org.springframework.batch.core.step.item.FaultTolerantChunkProcessor.write(FaultTolerantChunkProcessor.java:444)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep', '2020-11-19 17:55:57', NULL);
INSERT INTO `batch_job_execution` VALUES (32, 2, 32, '2020-11-19 17:58:39', '2020-11-19 17:58:39', '2020-11-19 17:58:39', 'COMPLETED', 'COMPLETED', '', '2020-11-19 17:58:39', NULL);
INSERT INTO `batch_job_execution` VALUES (33, 2, 33, '2020-11-20 10:13:27', '2020-11-20 10:13:27', '2020-11-20 10:13:27', 'COMPLETED', 'COMPLETED', '', '2020-11-20 10:13:27', NULL);
INSERT INTO `batch_job_execution` VALUES (34, 2, 34, '2020-11-20 10:14:39', '2020-11-20 10:14:40', '2020-11-20 10:14:40', 'COMPLETED', 'COMPLETED', '', '2020-11-20 10:14:40', NULL);
INSERT INTO `batch_job_execution` VALUES (35, 2, 35, '2020-11-23 14:45:58', '2020-11-23 14:45:58', '2020-11-23 14:45:59', 'COMPLETED', 'COMPLETED', '', '2020-11-23 14:45:59', NULL);
INSERT INTO `batch_job_execution` VALUES (36, 2, 36, '2020-11-23 15:00:48', '2020-11-23 15:00:48', '2020-11-23 15:00:48', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:00:48', NULL);
INSERT INTO `batch_job_execution` VALUES (37, 2, 37, '2020-11-23 15:02:09', '2020-11-23 15:02:09', '2020-11-23 15:02:09', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:02:09', NULL);
INSERT INTO `batch_job_execution` VALUES (38, 2, 38, '2020-11-23 15:21:51', '2020-11-23 15:21:51', '2020-11-23 15:21:51', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:21:51', NULL);
INSERT INTO `batch_job_execution` VALUES (39, 2, 39, '2020-11-23 15:25:07', '2020-11-23 15:25:07', '2020-11-23 15:25:07', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:25:07', NULL);
INSERT INTO `batch_job_execution` VALUES (40, 2, 40, '2020-11-23 15:27:05', '2020-11-23 15:27:05', '2020-11-23 15:27:05', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:27:05', NULL);
INSERT INTO `batch_job_execution` VALUES (41, 2, 41, '2020-11-23 15:39:27', '2020-11-23 15:39:27', '2020-11-23 15:39:27', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:39:27', NULL);
INSERT INTO `batch_job_execution` VALUES (42, 2, 42, '2020-11-23 15:53:30', '2020-11-23 15:53:30', '2020-11-23 15:53:31', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:53:31', NULL);
INSERT INTO `batch_job_execution` VALUES (43, 2, 43, '2020-11-23 15:54:58', '2020-11-23 15:54:58', '2020-11-23 15:54:58', 'COMPLETED', 'COMPLETED', '', '2020-11-23 15:54:58', NULL);
INSERT INTO `batch_job_execution` VALUES (44, 2, 44, '2020-11-23 16:03:17', '2020-11-23 16:03:17', '2020-11-23 16:03:17', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:03:17', NULL);
INSERT INTO `batch_job_execution` VALUES (45, 2, 45, '2020-11-23 16:04:36', '2020-11-23 16:04:36', '2020-11-23 16:04:36', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:04:36', NULL);
INSERT INTO `batch_job_execution` VALUES (46, 2, 46, '2020-11-23 16:04:49', '2020-11-23 16:04:49', '2020-11-23 16:04:49', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:04:49', NULL);
INSERT INTO `batch_job_execution` VALUES (47, 2, 47, '2020-11-23 16:05:07', '2020-11-23 16:05:07', '2020-11-23 16:05:07', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:05:07', NULL);
INSERT INTO `batch_job_execution` VALUES (48, 2, 48, '2020-11-23 16:23:56', '2020-11-23 16:23:56', '2020-11-23 16:23:56', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:23:56', NULL);
INSERT INTO `batch_job_execution` VALUES (49, 2, 49, '2020-11-23 16:41:51', '2020-11-23 16:41:51', '2020-11-23 16:41:52', 'COMPLETED', 'COMPLETED', '', '2020-11-23 16:41:52', NULL);
INSERT INTO `batch_job_execution` VALUES (50, 2, 50, '2020-11-24 10:47:42', '2020-11-24 10:47:42', '2020-11-24 10:47:43', 'COMPLETED', 'COMPLETED', '', '2020-11-24 10:47:43', NULL);

SET FOREIGN_KEY_CHECKS = 1;