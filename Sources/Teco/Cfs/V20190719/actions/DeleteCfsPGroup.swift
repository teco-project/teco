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

extension Cfs {
    /// DeleteCfsPGroup请求参数结构体
    public struct DeleteCfsPGroupRequest: TCRequestModel {
        /// 权限组 ID
        public let pGroupId: String

        public init(pGroupId: String) {
            self.pGroupId = pGroupId
        }

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
        }
    }

    /// DeleteCfsPGroup返回参数结构体
    public struct DeleteCfsPGroupResponse: TCResponseModel {
        /// 权限组 ID
        public let pGroupId: String

        /// 用户 ID
        public let appId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case appId = "AppId"
            case requestId = "RequestId"
        }
    }

    /// 删除权限组
    ///
    /// 本接口（DeleteCfsPGroup）用于删除权限组。
    @inlinable
    public func deleteCfsPGroup(_ input: DeleteCfsPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCfsPGroupResponse> {
        self.client.execute(action: "DeleteCfsPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除权限组
    ///
    /// 本接口（DeleteCfsPGroup）用于删除权限组。
    @inlinable
    public func deleteCfsPGroup(_ input: DeleteCfsPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCfsPGroupResponse {
        try await self.client.execute(action: "DeleteCfsPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除权限组
    ///
    /// 本接口（DeleteCfsPGroup）用于删除权限组。
    @inlinable
    public func deleteCfsPGroup(pGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCfsPGroupResponse> {
        self.deleteCfsPGroup(DeleteCfsPGroupRequest(pGroupId: pGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除权限组
    ///
    /// 本接口（DeleteCfsPGroup）用于删除权限组。
    @inlinable
    public func deleteCfsPGroup(pGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCfsPGroupResponse {
        try await self.deleteCfsPGroup(DeleteCfsPGroupRequest(pGroupId: pGroupId), region: region, logger: logger, on: eventLoop)
    }
}
