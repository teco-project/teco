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

extension Cwp {
    /// ModifyOrderAttribute请求参数结构体
    public struct ModifyOrderAttributeRequest: TCRequestModel {
        /// 授权类型 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        public let licenseType: UInt64

        /// 资源ID
        public let resourceId: String

        /// 可编辑的属性名称 ,当前支持的有: alias 资源别名
        public let attrName: String

        /// 属性值
        public let attrValue: String

        public init(licenseType: UInt64, resourceId: String, attrName: String, attrValue: String) {
            self.licenseType = licenseType
            self.resourceId = resourceId
            self.attrName = attrName
            self.attrValue = attrValue
        }

        enum CodingKeys: String, CodingKey {
            case licenseType = "LicenseType"
            case resourceId = "ResourceId"
            case attrName = "AttrName"
            case attrValue = "AttrValue"
        }
    }

    /// ModifyOrderAttribute返回参数结构体
    public struct ModifyOrderAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable @discardableResult
    public func modifyOrderAttribute(_ input: ModifyOrderAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrderAttributeResponse> {
        self.client.execute(action: "ModifyOrderAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable @discardableResult
    public func modifyOrderAttribute(_ input: ModifyOrderAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrderAttributeResponse {
        try await self.client.execute(action: "ModifyOrderAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable @discardableResult
    public func modifyOrderAttribute(licenseType: UInt64, resourceId: String, attrName: String, attrValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrderAttributeResponse> {
        self.modifyOrderAttribute(.init(licenseType: licenseType, resourceId: resourceId, attrName: attrName, attrValue: attrValue), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable @discardableResult
    public func modifyOrderAttribute(licenseType: UInt64, resourceId: String, attrName: String, attrValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrderAttributeResponse {
        try await self.modifyOrderAttribute(.init(licenseType: licenseType, resourceId: resourceId, attrName: attrName, attrValue: attrValue), region: region, logger: logger, on: eventLoop)
    }
}
