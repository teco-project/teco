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

extension Oceanus {
    /// StopJobs请求参数结构体
    public struct StopJobsRequest: TCRequestModel {
        /// 批量停止作业的描述信息
        public let stopJobDescriptions: [StopJobDescription]

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(stopJobDescriptions: [StopJobDescription], workSpaceId: String? = nil) {
            self.stopJobDescriptions = stopJobDescriptions
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case stopJobDescriptions = "StopJobDescriptions"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// StopJobs返回参数结构体
    public struct StopJobsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止作业
    ///
    /// 批量停止作业，批量操作数量上限为20
    @inlinable @discardableResult
    public func stopJobs(_ input: StopJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopJobsResponse> {
        self.client.execute(action: "StopJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止作业
    ///
    /// 批量停止作业，批量操作数量上限为20
    @inlinable @discardableResult
    public func stopJobs(_ input: StopJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopJobsResponse {
        try await self.client.execute(action: "StopJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止作业
    ///
    /// 批量停止作业，批量操作数量上限为20
    @inlinable @discardableResult
    public func stopJobs(stopJobDescriptions: [StopJobDescription], workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopJobsResponse> {
        let input = StopJobsRequest(stopJobDescriptions: stopJobDescriptions, workSpaceId: workSpaceId)
        return self.client.execute(action: "StopJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止作业
    ///
    /// 批量停止作业，批量操作数量上限为20
    @inlinable @discardableResult
    public func stopJobs(stopJobDescriptions: [StopJobDescription], workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopJobsResponse {
        let input = StopJobsRequest(stopJobDescriptions: stopJobDescriptions, workSpaceId: workSpaceId)
        return try await self.client.execute(action: "StopJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
