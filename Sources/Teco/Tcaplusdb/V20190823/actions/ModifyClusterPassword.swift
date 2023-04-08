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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tcaplusdb {
    /// ModifyClusterPassword请求参数结构体
    public struct ModifyClusterPasswordRequest: TCRequestModel {
        /// 需要修改密码的集群ID
        public let clusterId: String

        /// 集群旧密码
        public let oldPassword: String

        /// 集群旧密码预期失效时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var oldPasswordExpireTime: Date

        /// 集群新密码，密码必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        public let newPassword: String

        /// 更新模式： `1` 更新密码；`2` 更新旧密码失效时间，默认为`1` 模式
        public let mode: String?

        public init(clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil) {
            self.clusterId = clusterId
            self.oldPassword = oldPassword
            self._oldPasswordExpireTime = .init(wrappedValue: oldPasswordExpireTime)
            self.newPassword = newPassword
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case oldPassword = "OldPassword"
            case oldPasswordExpireTime = "OldPasswordExpireTime"
            case newPassword = "NewPassword"
            case mode = "Mode"
        }
    }

    /// ModifyClusterPassword返回参数结构体
    public struct ModifyClusterPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable @discardableResult
    public func modifyClusterPassword(_ input: ModifyClusterPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterPasswordResponse> {
        self.client.execute(action: "ModifyClusterPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable @discardableResult
    public func modifyClusterPassword(_ input: ModifyClusterPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordResponse {
        try await self.client.execute(action: "ModifyClusterPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable @discardableResult
    public func modifyClusterPassword(clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterPasswordResponse> {
        self.modifyClusterPassword(.init(clusterId: clusterId, oldPassword: oldPassword, oldPasswordExpireTime: oldPasswordExpireTime, newPassword: newPassword, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable @discardableResult
    public func modifyClusterPassword(clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordResponse {
        try await self.modifyClusterPassword(.init(clusterId: clusterId, oldPassword: oldPassword, oldPasswordExpireTime: oldPasswordExpireTime, newPassword: newPassword, mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
