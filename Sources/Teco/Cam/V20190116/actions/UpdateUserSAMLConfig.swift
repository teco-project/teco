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

extension Cam {
    /// UpdateUserSAMLConfig请求参数结构体
    public struct UpdateUserSAMLConfigRequest: TCRequest {
        /// 修改的操作类型:enable:启用,disable:禁用,updateSAML:修改元数据文档
        public let operate: String

        /// 元数据文档，需要base64 encode，仅当Operate为updateSAML时需要此参数
        public let samlMetadataDocument: String?

        /// 辅助域名
        public let auxiliaryDomain: String?

        public init(operate: String, samlMetadataDocument: String? = nil, auxiliaryDomain: String? = nil) {
            self.operate = operate
            self.samlMetadataDocument = samlMetadataDocument
            self.auxiliaryDomain = auxiliaryDomain
        }

        enum CodingKeys: String, CodingKey {
            case operate = "Operate"
            case samlMetadataDocument = "SAMLMetadataDocument"
            case auxiliaryDomain = "AuxiliaryDomain"
        }
    }

    /// UpdateUserSAMLConfig返回参数结构体
    public struct UpdateUserSAMLConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改用户SAML配置
    @inlinable @discardableResult
    public func updateUserSAMLConfig(_ input: UpdateUserSAMLConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserSAMLConfigResponse> {
        self.client.execute(action: "UpdateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改用户SAML配置
    @inlinable @discardableResult
    public func updateUserSAMLConfig(_ input: UpdateUserSAMLConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserSAMLConfigResponse {
        try await self.client.execute(action: "UpdateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改用户SAML配置
    @inlinable @discardableResult
    public func updateUserSAMLConfig(operate: String, samlMetadataDocument: String? = nil, auxiliaryDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserSAMLConfigResponse> {
        self.updateUserSAMLConfig(.init(operate: operate, samlMetadataDocument: samlMetadataDocument, auxiliaryDomain: auxiliaryDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 修改用户SAML配置
    @inlinable @discardableResult
    public func updateUserSAMLConfig(operate: String, samlMetadataDocument: String? = nil, auxiliaryDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserSAMLConfigResponse {
        try await self.updateUserSAMLConfig(.init(operate: operate, samlMetadataDocument: samlMetadataDocument, auxiliaryDomain: auxiliaryDomain), region: region, logger: logger, on: eventLoop)
    }
}
