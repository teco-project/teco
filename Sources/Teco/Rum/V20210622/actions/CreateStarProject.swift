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
    /// CreateStarProject请求参数结构体
    public struct CreateStarProjectRequest: TCRequestModel {
        /// 实例ID：taw-123
        public let instanceID: String

        /// 项目ID
        public let id: Int64

        public init(instanceID: String, id: Int64) {
            self.instanceID = instanceID
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case id = "ID"
        }
    }

    /// CreateStarProject返回参数结构体
    public struct CreateStarProjectResponse: TCResponseModel {
        /// 接口返回信息
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 添加星标应用
    ///
    /// 个人用户添加星标项目
    @inlinable
    public func createStarProject(_ input: CreateStarProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStarProjectResponse> {
        self.client.execute(action: "CreateStarProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加星标应用
    ///
    /// 个人用户添加星标项目
    @inlinable
    public func createStarProject(_ input: CreateStarProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStarProjectResponse {
        try await self.client.execute(action: "CreateStarProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加星标应用
    ///
    /// 个人用户添加星标项目
    @inlinable
    public func createStarProject(instanceID: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStarProjectResponse> {
        self.createStarProject(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 添加星标应用
    ///
    /// 个人用户添加星标项目
    @inlinable
    public func createStarProject(instanceID: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStarProjectResponse {
        try await self.createStarProject(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }
}
