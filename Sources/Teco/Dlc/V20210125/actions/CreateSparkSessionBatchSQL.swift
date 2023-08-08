//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Dlc {
    /// CreateSparkSessionBatchSQL请求参数结构体
    public struct CreateSparkSessionBatchSQLRequest: TCRequestModel {
        /// DLC Spark作业引擎名称
        public let dataEngineName: String

        /// 运行sql
        public let executeSQL: String

        /// 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        public let driverSize: String?

        /// 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        public let executorSize: String?

        /// 指定的Executor数量，默认为1
        public let executorNumbers: UInt64?

        /// 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于ExecutorNumbers
        public let executorMaxNumbers: UInt64?

        /// 指定的Session超时时间，单位秒，默认3600秒
        public let timeoutInSecond: Int64?

        /// Session唯一标识，当指定sessionid，则使用该session运行任务。
        public let sessionId: String?

        /// 指定要创建的session名称
        public let sessionName: String?

        /// Session相关配置，当前支持：1.dlc.eni：用户配置的eni网关信息，可以用过该字段设置；
        /// 2.dlc.role.arn：用户配置的roleArn鉴权策略配置信息，可以用过该字段设置；
        /// 3.dlc.sql.set.config：用户配置的集群配置信息，可以用过该字段设置；
        public let arguments: [KVPair]?

        public init(dataEngineName: String, executeSQL: String, driverSize: String? = nil, executorSize: String? = nil, executorNumbers: UInt64? = nil, executorMaxNumbers: UInt64? = nil, timeoutInSecond: Int64? = nil, sessionId: String? = nil, sessionName: String? = nil, arguments: [KVPair]? = nil) {
            self.dataEngineName = dataEngineName
            self.executeSQL = executeSQL
            self.driverSize = driverSize
            self.executorSize = executorSize
            self.executorNumbers = executorNumbers
            self.executorMaxNumbers = executorMaxNumbers
            self.timeoutInSecond = timeoutInSecond
            self.sessionId = sessionId
            self.sessionName = sessionName
            self.arguments = arguments
        }

        enum CodingKeys: String, CodingKey {
            case dataEngineName = "DataEngineName"
            case executeSQL = "ExecuteSQL"
            case driverSize = "DriverSize"
            case executorSize = "ExecutorSize"
            case executorNumbers = "ExecutorNumbers"
            case executorMaxNumbers = "ExecutorMaxNumbers"
            case timeoutInSecond = "TimeoutInSecond"
            case sessionId = "SessionId"
            case sessionName = "SessionName"
            case arguments = "Arguments"
        }
    }

    /// CreateSparkSessionBatchSQL返回参数结构体
    public struct CreateSparkSessionBatchSQLResponse: TCResponseModel {
        /// 批任务唯一标识
        public let batchId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 创建并执行Spark SQL批任务
    ///
    /// 本接口（CreateSparkSessionBatchSQL）用于向Spark作业引擎提交Spark SQL批任务。
    @inlinable
    public func createSparkSessionBatchSQL(_ input: CreateSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSparkSessionBatchSQLResponse> {
        self.client.execute(action: "CreateSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建并执行Spark SQL批任务
    ///
    /// 本接口（CreateSparkSessionBatchSQL）用于向Spark作业引擎提交Spark SQL批任务。
    @inlinable
    public func createSparkSessionBatchSQL(_ input: CreateSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkSessionBatchSQLResponse {
        try await self.client.execute(action: "CreateSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建并执行Spark SQL批任务
    ///
    /// 本接口（CreateSparkSessionBatchSQL）用于向Spark作业引擎提交Spark SQL批任务。
    @inlinable
    public func createSparkSessionBatchSQL(dataEngineName: String, executeSQL: String, driverSize: String? = nil, executorSize: String? = nil, executorNumbers: UInt64? = nil, executorMaxNumbers: UInt64? = nil, timeoutInSecond: Int64? = nil, sessionId: String? = nil, sessionName: String? = nil, arguments: [KVPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSparkSessionBatchSQLResponse> {
        self.createSparkSessionBatchSQL(.init(dataEngineName: dataEngineName, executeSQL: executeSQL, driverSize: driverSize, executorSize: executorSize, executorNumbers: executorNumbers, executorMaxNumbers: executorMaxNumbers, timeoutInSecond: timeoutInSecond, sessionId: sessionId, sessionName: sessionName, arguments: arguments), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并执行Spark SQL批任务
    ///
    /// 本接口（CreateSparkSessionBatchSQL）用于向Spark作业引擎提交Spark SQL批任务。
    @inlinable
    public func createSparkSessionBatchSQL(dataEngineName: String, executeSQL: String, driverSize: String? = nil, executorSize: String? = nil, executorNumbers: UInt64? = nil, executorMaxNumbers: UInt64? = nil, timeoutInSecond: Int64? = nil, sessionId: String? = nil, sessionName: String? = nil, arguments: [KVPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkSessionBatchSQLResponse {
        try await self.createSparkSessionBatchSQL(.init(dataEngineName: dataEngineName, executeSQL: executeSQL, driverSize: driverSize, executorSize: executorSize, executorNumbers: executorNumbers, executorMaxNumbers: executorMaxNumbers, timeoutInSecond: timeoutInSecond, sessionId: sessionId, sessionName: sessionName, arguments: arguments), region: region, logger: logger, on: eventLoop)
    }
}
