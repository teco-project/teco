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

extension Rum {
    /// StopProject请求参数结构体
    public struct StopProjectRequest: TCRequestModel {
        /// 项目 id
        public let projectId: Int64

        public init(projectId: Int64) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// StopProject返回参数结构体
    public struct StopProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止应用上报
    ///
    /// 停止项目使用与上报数据
    @inlinable @discardableResult
    public func stopProject(_ input: StopProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopProjectResponse> {
        self.client.execute(action: "StopProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止应用上报
    ///
    /// 停止项目使用与上报数据
    @inlinable @discardableResult
    public func stopProject(_ input: StopProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopProjectResponse {
        try await self.client.execute(action: "StopProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止应用上报
    ///
    /// 停止项目使用与上报数据
    @inlinable @discardableResult
    public func stopProject(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopProjectResponse> {
        self.stopProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止应用上报
    ///
    /// 停止项目使用与上报数据
    @inlinable @discardableResult
    public func stopProject(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopProjectResponse {
        try await self.stopProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
