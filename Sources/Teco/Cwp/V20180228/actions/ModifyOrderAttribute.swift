//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cwp {
    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable
    public func modifyOrderAttribute(_ input: ModifyOrderAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyOrderAttributeResponse > {
        self.client.execute(action: "ModifyOrderAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 编辑订单属性
    ///
    /// 对订单属性编辑
    @inlinable
    public func modifyOrderAttribute(_ input: ModifyOrderAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrderAttributeResponse {
        try await self.client.execute(action: "ModifyOrderAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
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
        
        public init (licenseType: UInt64, resourceId: String, attrName: String, attrValue: String) {
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
}