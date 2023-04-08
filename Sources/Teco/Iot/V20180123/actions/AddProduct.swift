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

extension Iot {
    /// AddProduct请求参数结构体
    public struct AddProductRequest: TCRequestModel {
        /// 产品名称，同一区域产品名称需唯一，支持中文、英文字母、中划线和下划线，长度不超过31个字符，中文占两个字符
        public let name: String

        /// 产品描述
        public let description: String

        /// 数据模版
        public let dataTemplate: [DataTemplate]?

        /// 产品版本（native表示基础版，template表示高级版，默认值为template）
        public let dataProtocol: String?

        /// 设备认证方式（1：动态令牌，2：签名直连鉴权）
        public let authType: UInt64?

        /// 通信方式（other/wifi/cellular/nb-iot）
        public let commProtocol: String?

        /// 产品的设备类型（device: 直连设备；sub_device：子设备；gateway：网关设备）
        public let deviceType: String?

        public init(name: String, description: String, dataTemplate: [DataTemplate]? = nil, dataProtocol: String? = nil, authType: UInt64? = nil, commProtocol: String? = nil, deviceType: String? = nil) {
            self.name = name
            self.description = description
            self.dataTemplate = dataTemplate
            self.dataProtocol = dataProtocol
            self.authType = authType
            self.commProtocol = commProtocol
            self.deviceType = deviceType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case dataTemplate = "DataTemplate"
            case dataProtocol = "DataProtocol"
            case authType = "AuthType"
            case commProtocol = "CommProtocol"
            case deviceType = "DeviceType"
        }
    }

    /// AddProduct返回参数结构体
    public struct AddProductResponse: TCResponseModel {
        /// 产品信息
        public let product: Product

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case requestId = "RequestId"
        }
    }

    /// 新增产品
    ///
    /// 本接口(AddProduct)用于创建、定义某款硬件产品。
    @inlinable
    public func addProduct(_ input: AddProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddProductResponse> {
        self.client.execute(action: "AddProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增产品
    ///
    /// 本接口(AddProduct)用于创建、定义某款硬件产品。
    @inlinable
    public func addProduct(_ input: AddProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProductResponse {
        try await self.client.execute(action: "AddProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增产品
    ///
    /// 本接口(AddProduct)用于创建、定义某款硬件产品。
    @inlinable
    public func addProduct(name: String, description: String, dataTemplate: [DataTemplate]? = nil, dataProtocol: String? = nil, authType: UInt64? = nil, commProtocol: String? = nil, deviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddProductResponse> {
        self.addProduct(.init(name: name, description: description, dataTemplate: dataTemplate, dataProtocol: dataProtocol, authType: authType, commProtocol: commProtocol, deviceType: deviceType), region: region, logger: logger, on: eventLoop)
    }

    /// 新增产品
    ///
    /// 本接口(AddProduct)用于创建、定义某款硬件产品。
    @inlinable
    public func addProduct(name: String, description: String, dataTemplate: [DataTemplate]? = nil, dataProtocol: String? = nil, authType: UInt64? = nil, commProtocol: String? = nil, deviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProductResponse {
        try await self.addProduct(.init(name: name, description: description, dataTemplate: dataTemplate, dataProtocol: dataProtocol, authType: authType, commProtocol: commProtocol, deviceType: deviceType), region: region, logger: logger, on: eventLoop)
    }
}
