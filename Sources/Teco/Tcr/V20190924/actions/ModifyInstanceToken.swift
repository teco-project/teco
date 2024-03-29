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
    /// ModifyInstanceToken请求参数结构体
    public struct ModifyInstanceTokenRequest: TCRequest {
        /// 实例长期访问凭证 ID
        public let tokenId: String

        /// 实例 ID
        public let registryId: String

        /// 启用或禁用实例长期访问凭证
        public let enable: Bool?

        /// 访问凭证描述
        public let desc: String?

        /// 1为修改描述 2为操作启动禁用，默认值为2
        public let modifyFlag: Int64?

        public init(tokenId: String, registryId: String, enable: Bool? = nil, desc: String? = nil, modifyFlag: Int64? = nil) {
            self.tokenId = tokenId
            self.registryId = registryId
            self.enable = enable
            self.desc = desc
            self.modifyFlag = modifyFlag
        }

        enum CodingKeys: String, CodingKey {
            case tokenId = "TokenId"
            case registryId = "RegistryId"
            case enable = "Enable"
            case desc = "Desc"
            case modifyFlag = "ModifyFlag"
        }
    }

    /// ModifyInstanceToken返回参数结构体
    public struct ModifyInstanceTokenResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新实例长期访问凭证
    ///
    /// 更新实例内指定长期访问凭证的启用状态
    @inlinable @discardableResult
    public func modifyInstanceToken(_ input: ModifyInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceTokenResponse> {
        self.client.execute(action: "ModifyInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新实例长期访问凭证
    ///
    /// 更新实例内指定长期访问凭证的启用状态
    @inlinable @discardableResult
    public func modifyInstanceToken(_ input: ModifyInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceTokenResponse {
        try await self.client.execute(action: "ModifyInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新实例长期访问凭证
    ///
    /// 更新实例内指定长期访问凭证的启用状态
    @inlinable @discardableResult
    public func modifyInstanceToken(tokenId: String, registryId: String, enable: Bool? = nil, desc: String? = nil, modifyFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceTokenResponse> {
        self.modifyInstanceToken(.init(tokenId: tokenId, registryId: registryId, enable: enable, desc: desc, modifyFlag: modifyFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 更新实例长期访问凭证
    ///
    /// 更新实例内指定长期访问凭证的启用状态
    @inlinable @discardableResult
    public func modifyInstanceToken(tokenId: String, registryId: String, enable: Bool? = nil, desc: String? = nil, modifyFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceTokenResponse {
        try await self.modifyInstanceToken(.init(tokenId: tokenId, registryId: registryId, enable: enable, desc: desc, modifyFlag: modifyFlag), region: region, logger: logger, on: eventLoop)
    }
}
