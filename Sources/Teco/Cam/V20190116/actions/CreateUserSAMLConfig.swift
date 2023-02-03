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

extension Cam {
    /// CreateUserSAMLConfig请求参数结构体
    public struct CreateUserSAMLConfigRequest: TCRequestModel {
        /// SAML元数据文档，需要base64 encode
        public let samlMetadataDocument: String

        public init(samlMetadataDocument: String) {
            self.samlMetadataDocument = samlMetadataDocument
        }

        enum CodingKeys: String, CodingKey {
            case samlMetadataDocument = "SAMLMetadataDocument"
        }
    }

    /// CreateUserSAMLConfig返回参数结构体
    public struct CreateUserSAMLConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建用户SAML配置
    @inlinable @discardableResult
    public func createUserSAMLConfig(_ input: CreateUserSAMLConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserSAMLConfigResponse> {
        self.client.execute(action: "CreateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户SAML配置
    @inlinable @discardableResult
    public func createUserSAMLConfig(_ input: CreateUserSAMLConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserSAMLConfigResponse {
        try await self.client.execute(action: "CreateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建用户SAML配置
    @inlinable @discardableResult
    public func createUserSAMLConfig(samlMetadataDocument: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserSAMLConfigResponse> {
        let input = CreateUserSAMLConfigRequest(samlMetadataDocument: samlMetadataDocument)
        return self.client.execute(action: "CreateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户SAML配置
    @inlinable @discardableResult
    public func createUserSAMLConfig(samlMetadataDocument: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserSAMLConfigResponse {
        let input = CreateUserSAMLConfigRequest(samlMetadataDocument: samlMetadataDocument)
        return try await self.client.execute(action: "CreateUserSAMLConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
