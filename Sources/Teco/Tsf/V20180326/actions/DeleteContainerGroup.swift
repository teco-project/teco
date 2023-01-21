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

extension Tsf {
    /// DeleteContainerGroup请求参数结构体
    public struct DeleteContainerGroupRequest: TCRequestModel {
        /// 部署组ID，分组唯一标识
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DeleteContainerGroup返回参数结构体
    public struct DeleteContainerGroupResponse: TCResponseModel {
        /// 删除操作是否成功：
        /// true：成功
        /// false：失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除容器部署组
    @inlinable
    public func deleteContainerGroup(_ input: DeleteContainerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContainerGroupResponse> {
        self.client.execute(action: "DeleteContainerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除容器部署组
    @inlinable
    public func deleteContainerGroup(_ input: DeleteContainerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContainerGroupResponse {
        try await self.client.execute(action: "DeleteContainerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除容器部署组
    @inlinable
    public func deleteContainerGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContainerGroupResponse> {
        self.deleteContainerGroup(DeleteContainerGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除容器部署组
    @inlinable
    public func deleteContainerGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContainerGroupResponse {
        try await self.deleteContainerGroup(DeleteContainerGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
