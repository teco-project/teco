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

extension Tcr {
    /// DeleteCustomAccount请求参数结构体
    public struct DeleteCustomAccountRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 自定义的账户名
        public let name: String

        public init(registryId: String, name: String) {
            self.registryId = registryId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case name = "Name"
        }
    }

    /// DeleteCustomAccount返回参数结构体
    public struct DeleteCustomAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除自定义账号
    @inlinable @discardableResult
    public func deleteCustomAccount(_ input: DeleteCustomAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomAccountResponse> {
        self.client.execute(action: "DeleteCustomAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义账号
    @inlinable @discardableResult
    public func deleteCustomAccount(_ input: DeleteCustomAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomAccountResponse {
        try await self.client.execute(action: "DeleteCustomAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义账号
    @inlinable @discardableResult
    public func deleteCustomAccount(registryId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomAccountResponse> {
        self.deleteCustomAccount(.init(registryId: registryId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义账号
    @inlinable @discardableResult
    public func deleteCustomAccount(registryId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomAccountResponse {
        try await self.deleteCustomAccount(.init(registryId: registryId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
