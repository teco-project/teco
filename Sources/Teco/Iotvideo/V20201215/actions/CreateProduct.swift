//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotvideo {
    /// CreateProduct请求参数结构体
    public struct CreateProductRequest: TCRequestModel {
        /// 产品名称
        public let productName: String

        /// 产品设备类型 1.普通设备 2.NVR设备
        public let deviceType: UInt64

        /// 产品有效期
        public let productVaildYears: UInt64

        /// 设备功能码 ypsxth音频双向通话 spdxth视频单向通话
        public let features: [String]

        /// 设备操作系统，通用设备填default
        public let chipOs: String

        /// 芯片厂商id，通用设备填default
        public let chipManufactureId: String

        /// 芯片id，通用设备填default
        public let chipId: String

        /// 产品描述信息
        public let productDescription: String

        /// 认证方式 只支持取值为2 psk认证
        public let encryptionType: UInt64?

        /// 连接类型，wifi表示WIFI连接，cellular表示4G连接
        public let netType: String?

        public init(productName: String, deviceType: UInt64, productVaildYears: UInt64, features: [String], chipOs: String, chipManufactureId: String, chipId: String, productDescription: String, encryptionType: UInt64? = nil, netType: String? = nil) {
            self.productName = productName
            self.deviceType = deviceType
            self.productVaildYears = productVaildYears
            self.features = features
            self.chipOs = chipOs
            self.chipManufactureId = chipManufactureId
            self.chipId = chipId
            self.productDescription = productDescription
            self.encryptionType = encryptionType
            self.netType = netType
        }

        enum CodingKeys: String, CodingKey {
            case productName = "ProductName"
            case deviceType = "DeviceType"
            case productVaildYears = "ProductVaildYears"
            case features = "Features"
            case chipOs = "ChipOs"
            case chipManufactureId = "ChipManufactureId"
            case chipId = "ChipId"
            case productDescription = "ProductDescription"
            case encryptionType = "EncryptionType"
            case netType = "NetType"
        }
    }

    /// CreateProduct返回参数结构体
    public struct CreateProductResponse: TCResponseModel {
        /// 产品详情
        public let data: VideoProduct

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建产品
    @inlinable
    public func createProduct(_ input: CreateProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProductResponse> {
        self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建产品
    @inlinable
    public func createProduct(_ input: CreateProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductResponse {
        try await self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建产品
    @inlinable
    public func createProduct(productName: String, deviceType: UInt64, productVaildYears: UInt64, features: [String], chipOs: String, chipManufactureId: String, chipId: String, productDescription: String, encryptionType: UInt64? = nil, netType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProductResponse> {
        self.createProduct(CreateProductRequest(productName: productName, deviceType: deviceType, productVaildYears: productVaildYears, features: features, chipOs: chipOs, chipManufactureId: chipManufactureId, chipId: chipId, productDescription: productDescription, encryptionType: encryptionType, netType: netType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建产品
    @inlinable
    public func createProduct(productName: String, deviceType: UInt64, productVaildYears: UInt64, features: [String], chipOs: String, chipManufactureId: String, chipId: String, productDescription: String, encryptionType: UInt64? = nil, netType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductResponse {
        try await self.createProduct(CreateProductRequest(productName: productName, deviceType: deviceType, productVaildYears: productVaildYears, features: features, chipOs: chipOs, chipManufactureId: chipManufactureId, chipId: chipId, productDescription: productDescription, encryptionType: encryptionType, netType: netType), region: region, logger: logger, on: eventLoop)
    }
}
