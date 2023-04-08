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

import TecoCore

extension Vpc {
    /// ModifyCcnAttribute请求参数结构体
    public struct ModifyCcnAttributeRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// CCN名称，最大长度不能超过60个字节，限制：CcnName和CcnDescription必须至少选择一个参数输入，否则报错。
        public let ccnName: String?

        /// CCN描述信息，最大长度不能超过100个字节，限制：CcnName和CcnDescription必须至少选择一个参数输入，否则报错。
        public let ccnDescription: String?

        public init(ccnId: String, ccnName: String? = nil, ccnDescription: String? = nil) {
            self.ccnId = ccnId
            self.ccnName = ccnName
            self.ccnDescription = ccnDescription
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case ccnName = "CcnName"
            case ccnDescription = "CcnDescription"
        }
    }

    /// ModifyCcnAttribute返回参数结构体
    public struct ModifyCcnAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CCN属性
    ///
    /// 本接口（ModifyCcnAttribute）用于修改云联网（CCN）的相关属性。
    @inlinable @discardableResult
    public func modifyCcnAttribute(_ input: ModifyCcnAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcnAttributeResponse> {
        self.client.execute(action: "ModifyCcnAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CCN属性
    ///
    /// 本接口（ModifyCcnAttribute）用于修改云联网（CCN）的相关属性。
    @inlinable @discardableResult
    public func modifyCcnAttribute(_ input: ModifyCcnAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnAttributeResponse {
        try await self.client.execute(action: "ModifyCcnAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CCN属性
    ///
    /// 本接口（ModifyCcnAttribute）用于修改云联网（CCN）的相关属性。
    @inlinable @discardableResult
    public func modifyCcnAttribute(ccnId: String, ccnName: String? = nil, ccnDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcnAttributeResponse> {
        self.modifyCcnAttribute(.init(ccnId: ccnId, ccnName: ccnName, ccnDescription: ccnDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CCN属性
    ///
    /// 本接口（ModifyCcnAttribute）用于修改云联网（CCN）的相关属性。
    @inlinable @discardableResult
    public func modifyCcnAttribute(ccnId: String, ccnName: String? = nil, ccnDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnAttributeResponse {
        try await self.modifyCcnAttribute(.init(ccnId: ccnId, ccnName: ccnName, ccnDescription: ccnDescription), region: region, logger: logger, on: eventLoop)
    }
}
