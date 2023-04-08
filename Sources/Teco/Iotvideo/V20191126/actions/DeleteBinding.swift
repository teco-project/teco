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

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// DeleteBinding请求参数结构体
    public struct DeleteBindingRequest: TCRequestModel {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// 设备TID
        public let tid: String

        /// 用户角色，owner：主人，guest：访客
        public let role: String

        public init(accessId: String, tid: String, role: String) {
            self.accessId = accessId
            self.tid = tid
            self.role = role
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case tid = "Tid"
            case role = "Role"
        }
    }

    /// DeleteBinding返回参数结构体
    public struct DeleteBindingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终端用户解绑设备
    ///
    /// 本接口（DeleteBinding）用于终端用户和设备进行解绑定。
    @inlinable @discardableResult
    public func deleteBinding(_ input: DeleteBindingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBindingResponse> {
        self.client.execute(action: "DeleteBinding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终端用户解绑设备
    ///
    /// 本接口（DeleteBinding）用于终端用户和设备进行解绑定。
    @inlinable @discardableResult
    public func deleteBinding(_ input: DeleteBindingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBindingResponse {
        try await self.client.execute(action: "DeleteBinding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终端用户解绑设备
    ///
    /// 本接口（DeleteBinding）用于终端用户和设备进行解绑定。
    @inlinable @discardableResult
    public func deleteBinding(accessId: String, tid: String, role: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBindingResponse> {
        self.deleteBinding(.init(accessId: accessId, tid: tid, role: role), region: region, logger: logger, on: eventLoop)
    }

    /// 终端用户解绑设备
    ///
    /// 本接口（DeleteBinding）用于终端用户和设备进行解绑定。
    @inlinable @discardableResult
    public func deleteBinding(accessId: String, tid: String, role: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBindingResponse {
        try await self.deleteBinding(.init(accessId: accessId, tid: tid, role: role), region: region, logger: logger, on: eventLoop)
    }
}
