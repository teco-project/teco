//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
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
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var oldPasswordExpireTime: Date
        
        /// 集群新密码，密码必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        public let newPassword: String
        
        /// 更新模式： `1` 更新密码；`2` 更新旧密码失效时间，默认为`1` 模式
        public let mode: String?
        
        public init (clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil) {
            self.clusterId = clusterId
            self.oldPassword = oldPassword
            self.oldPasswordExpireTime = oldPasswordExpireTime
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
    @inlinable
    public func modifyClusterPassword(_ input: ModifyClusterPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterPasswordResponse > {
        self.client.execute(action: "ModifyClusterPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable
    public func modifyClusterPassword(_ input: ModifyClusterPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordResponse {
        try await self.client.execute(action: "ModifyClusterPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable
    public func modifyClusterPassword(clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterPasswordResponse > {
        self.modifyClusterPassword(ModifyClusterPasswordRequest(clusterId: clusterId, oldPassword: oldPassword, oldPasswordExpireTime: oldPasswordExpireTime, newPassword: newPassword, mode: mode), logger: logger, on: eventLoop)
    }
    
    /// 修改集群密码
    ///
    /// 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。
    @inlinable
    public func modifyClusterPassword(clusterId: String, oldPassword: String, oldPasswordExpireTime: Date, newPassword: String, mode: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterPasswordResponse {
        try await self.modifyClusterPassword(ModifyClusterPasswordRequest(clusterId: clusterId, oldPassword: oldPassword, oldPasswordExpireTime: oldPasswordExpireTime, newPassword: newPassword, mode: mode), logger: logger, on: eventLoop)
    }
}
