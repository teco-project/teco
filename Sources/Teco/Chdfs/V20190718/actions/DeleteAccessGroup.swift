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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Chdfs {
    /// DeleteAccessGroup请求参数结构体
    public struct DeleteAccessGroupRequest: TCRequestModel {
        /// 权限组ID
        public let accessGroupId: String

        public init(accessGroupId: String) {
            self.accessGroupId = accessGroupId
        }

        enum CodingKeys: String, CodingKey {
            case accessGroupId = "AccessGroupId"
        }
    }

    /// DeleteAccessGroup返回参数结构体
    public struct DeleteAccessGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除权限组
    ///
    /// 删除权限组。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteAccessGroup(_ input: DeleteAccessGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessGroupResponse> {
        self.client.execute(action: "DeleteAccessGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除权限组
    ///
    /// 删除权限组。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteAccessGroup(_ input: DeleteAccessGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessGroupResponse {
        try await self.client.execute(action: "DeleteAccessGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除权限组
    ///
    /// 删除权限组。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteAccessGroup(accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessGroupResponse> {
        self.deleteAccessGroup(.init(accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除权限组
    ///
    /// 删除权限组。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteAccessGroup(accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessGroupResponse {
        try await self.deleteAccessGroup(.init(accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }
}
