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

extension Iotcloud {
    /// UpdateProductDynamicRegister请求参数结构体
    public struct UpdateProductDynamicRegisterRequest: TCRequest {
        /// 产品Id
        public let productId: String

        /// 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        public let registerType: UInt64

        /// 动态注册设备上限
        public let registerLimit: UInt64

        public init(productId: String, registerType: UInt64, registerLimit: UInt64) {
            self.productId = productId
            self.registerType = registerType
            self.registerLimit = registerLimit
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case registerType = "RegisterType"
            case registerLimit = "RegisterLimit"
        }
    }

    /// UpdateProductDynamicRegister返回参数结构体
    public struct UpdateProductDynamicRegisterResponse: TCResponse {
        /// 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        public let registerType: UInt64

        /// 动态注册产品密钥
        public let productSecret: String

        /// 动态注册设备上限
        public let registerLimit: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registerType = "RegisterType"
            case productSecret = "ProductSecret"
            case registerLimit = "RegisterLimit"
            case requestId = "RequestId"
        }
    }

    /// 更新产品动态注册
    ///
    /// 更新产品动态注册的配置
    @inlinable
    public func updateProductDynamicRegister(_ input: UpdateProductDynamicRegisterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProductDynamicRegisterResponse> {
        self.client.execute(action: "UpdateProductDynamicRegister", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新产品动态注册
    ///
    /// 更新产品动态注册的配置
    @inlinable
    public func updateProductDynamicRegister(_ input: UpdateProductDynamicRegisterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProductDynamicRegisterResponse {
        try await self.client.execute(action: "UpdateProductDynamicRegister", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新产品动态注册
    ///
    /// 更新产品动态注册的配置
    @inlinable
    public func updateProductDynamicRegister(productId: String, registerType: UInt64, registerLimit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProductDynamicRegisterResponse> {
        self.updateProductDynamicRegister(.init(productId: productId, registerType: registerType, registerLimit: registerLimit), region: region, logger: logger, on: eventLoop)
    }

    /// 更新产品动态注册
    ///
    /// 更新产品动态注册的配置
    @inlinable
    public func updateProductDynamicRegister(productId: String, registerType: UInt64, registerLimit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProductDynamicRegisterResponse {
        try await self.updateProductDynamicRegister(.init(productId: productId, registerType: registerType, registerLimit: registerLimit), region: region, logger: logger, on: eventLoop)
    }
}
