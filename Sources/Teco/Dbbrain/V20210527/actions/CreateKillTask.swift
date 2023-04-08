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

import TecoCore

extension Dbbrain {
    /// CreateKillTask请求参数结构体
    public struct CreateKillTaskRequest: TCRequestModel {
        /// kill会话任务的关联实例ID。
        public let instanceId: String

        /// 任务持续时间，单位秒，手动关闭任务传-1。
        public let duration: Int64

        /// 任务过滤条件，客户端IP。
        public let host: String?

        /// 任务过滤条件，数据库库名,多个","隔开。
        public let db: String?

        /// 任务过滤条件，相关命令，多个","隔开。
        public let command: String?

        /// 任务过滤条件，支持单条件前缀匹配。
        public let info: String?

        /// 任务过滤条件，用户类型。
        public let user: String?

        /// 任务过滤条件，会话持续时长，单位秒。
        public let time: Int64?

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, duration: Int64, host: String? = nil, db: String? = nil, command: String? = nil, info: String? = nil, user: String? = nil, time: Int64? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.duration = duration
            self.host = host
            self.db = db
            self.command = command
            self.info = info
            self.user = user
            self.time = time
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case duration = "Duration"
            case host = "Host"
            case db = "DB"
            case command = "Command"
            case info = "Info"
            case user = "User"
            case time = "Time"
            case product = "Product"
        }
    }

    /// CreateKillTask返回参数结构体
    public struct CreateKillTaskResponse: TCResponseModel {
        /// kill会话任务创建成功返回1
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 创建中断会话的任务
    ///
    /// 创建中断会话的任务。
    @inlinable
    public func createKillTask(_ input: CreateKillTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKillTaskResponse> {
        self.client.execute(action: "CreateKillTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建中断会话的任务
    ///
    /// 创建中断会话的任务。
    @inlinable
    public func createKillTask(_ input: CreateKillTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKillTaskResponse {
        try await self.client.execute(action: "CreateKillTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建中断会话的任务
    ///
    /// 创建中断会话的任务。
    @inlinable
    public func createKillTask(instanceId: String, duration: Int64, host: String? = nil, db: String? = nil, command: String? = nil, info: String? = nil, user: String? = nil, time: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKillTaskResponse> {
        self.createKillTask(.init(instanceId: instanceId, duration: duration, host: host, db: db, command: command, info: info, user: user, time: time, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 创建中断会话的任务
    ///
    /// 创建中断会话的任务。
    @inlinable
    public func createKillTask(instanceId: String, duration: Int64, host: String? = nil, db: String? = nil, command: String? = nil, info: String? = nil, user: String? = nil, time: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKillTaskResponse {
        try await self.createKillTask(.init(instanceId: instanceId, duration: duration, host: host, db: db, command: command, info: info, user: user, time: time, product: product), region: region, logger: logger, on: eventLoop)
    }
}
