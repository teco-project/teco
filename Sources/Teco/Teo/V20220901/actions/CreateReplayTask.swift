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

extension Teo {
    /// CreateReplayTask请求参数结构体
    public struct CreateReplayTaskRequest: TCRequestModel {
        /// 重放任务的 ID 列表。
        public let ids: [String]

        public init(ids: [String]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// CreateReplayTask返回参数结构体
    public struct CreateReplayTaskResponse: TCResponseModel {
        /// 此次任务ID。
        public let jobId: String

        /// 失败的任务列表及原因。
        public let failedList: [FailReason]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case failedList = "FailedList"
            case requestId = "RequestId"
        }
    }

    /// 创建重放任务
    ///
    /// 创建刷新/预热重放任务
    @inlinable
    public func createReplayTask(_ input: CreateReplayTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplayTaskResponse> {
        self.client.execute(action: "CreateReplayTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建重放任务
    ///
    /// 创建刷新/预热重放任务
    @inlinable
    public func createReplayTask(_ input: CreateReplayTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReplayTaskResponse {
        try await self.client.execute(action: "CreateReplayTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建重放任务
    ///
    /// 创建刷新/预热重放任务
    @inlinable
    public func createReplayTask(ids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplayTaskResponse> {
        self.createReplayTask(CreateReplayTaskRequest(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 创建重放任务
    ///
    /// 创建刷新/预热重放任务
    @inlinable
    public func createReplayTask(ids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReplayTaskResponse {
        try await self.createReplayTask(CreateReplayTaskRequest(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
