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

extension Iotvideo {
    /// CreateProduct请求参数结构体
    public struct CreateProductRequest: TCRequestModel {
        /// 产器型号(APP产品,为APP包名)
        public let productModel: String

        /// 产品名称
        /// 仅支持中文、英文、数字、下划线，不超过32个字符
        public let productName: String

        /// 产品描述信息
        /// 不支持单引号、双引号、退格符、回车符、换行符、制表符、反斜杠、下划线、“%”、“#”、“$”，不超过128字符
        public let productDescription: String

        /// 设备功能码（ypsxth:音频双向通话 ，spdxth:视频单向通话）
        public let features: [String]?

        /// 主芯片产商ID
        public let chipManufactureId: String?

        /// 主芯片ID
        public let chipId: String?

        /// 地域：
        /// China-Mainland（中国大陆）
        /// China-Hong Kong, Macao and Taiwan（港澳台地区）
        /// America（美国）
        /// Europe（欧洲）
        /// India（印度）
        /// Other-Overseas（其他境外地区）
        public let productRegion: String?

        /// 设备类型, 0-普通视频设备，1-NVR设备
        public let productCate: UInt64?

        /// 接入模型，bit0是0：公版小程序未接入，bit0是1：公版小程序已接入
        public let accessMode: Int64?

        /// Linux,Android,Liteos等系统
        public let os: String?

        /// 芯片架构，只是针对操作系统为android的
        public let chipArch: String?

        public init(productModel: String, productName: String, productDescription: String, features: [String]? = nil, chipManufactureId: String? = nil, chipId: String? = nil, productRegion: String? = nil, productCate: UInt64? = nil, accessMode: Int64? = nil, os: String? = nil, chipArch: String? = nil) {
            self.productModel = productModel
            self.productName = productName
            self.productDescription = productDescription
            self.features = features
            self.chipManufactureId = chipManufactureId
            self.chipId = chipId
            self.productRegion = productRegion
            self.productCate = productCate
            self.accessMode = accessMode
            self.os = os
            self.chipArch = chipArch
        }

        enum CodingKeys: String, CodingKey {
            case productModel = "ProductModel"
            case productName = "ProductName"
            case productDescription = "ProductDescription"
            case features = "Features"
            case chipManufactureId = "ChipManufactureId"
            case chipId = "ChipId"
            case productRegion = "ProductRegion"
            case productCate = "ProductCate"
            case accessMode = "AccessMode"
            case os = "Os"
            case chipArch = "ChipArch"
        }
    }

    /// CreateProduct返回参数结构体
    public struct CreateProductResponse: TCResponseModel {
        /// 产品详细信息
        public let data: ProductBase

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网智能视频产品。
    @inlinable
    public func createProduct(_ input: CreateProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProductResponse> {
        self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网智能视频产品。
    @inlinable
    public func createProduct(_ input: CreateProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductResponse {
        try await self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网智能视频产品。
    @inlinable
    public func createProduct(productModel: String, productName: String, productDescription: String, features: [String]? = nil, chipManufactureId: String? = nil, chipId: String? = nil, productRegion: String? = nil, productCate: UInt64? = nil, accessMode: Int64? = nil, os: String? = nil, chipArch: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProductResponse> {
        let input = CreateProductRequest(productModel: productModel, productName: productName, productDescription: productDescription, features: features, chipManufactureId: chipManufactureId, chipId: chipId, productRegion: productRegion, productCate: productCate, accessMode: accessMode, os: os, chipArch: chipArch)
        return self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网智能视频产品。
    @inlinable
    public func createProduct(productModel: String, productName: String, productDescription: String, features: [String]? = nil, chipManufactureId: String? = nil, chipId: String? = nil, productRegion: String? = nil, productCate: UInt64? = nil, accessMode: Int64? = nil, os: String? = nil, chipArch: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductResponse {
        let input = CreateProductRequest(productModel: productModel, productName: productName, productDescription: productDescription, features: features, chipManufactureId: chipManufactureId, chipId: chipId, productRegion: productRegion, productCate: productCate, accessMode: accessMode, os: os, chipArch: chipArch)
        return try await self.client.execute(action: "CreateProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
