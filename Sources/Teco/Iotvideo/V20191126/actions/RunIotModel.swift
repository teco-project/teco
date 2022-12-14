//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// RunIotModel请求参数结构体
    public struct RunIotModelRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 物模型定义，json格式的字符串
        public let iotModel: String

        public init(productId: String, iotModel: String) {
            self.productId = productId
            self.iotModel = iotModel
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case iotModel = "IotModel"
        }
    }

    /// RunIotModel返回参数结构体
    public struct RunIotModelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 定义的物模型发布
    ///
    /// 本接口（RunIotModel）用于对定义的物模型进行发布。
    @inlinable
    public func runIotModel(_ input: RunIotModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RunIotModelResponse > {
        self.client.execute(action: "RunIotModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 定义的物模型发布
    ///
    /// 本接口（RunIotModel）用于对定义的物模型进行发布。
    @inlinable
    public func runIotModel(_ input: RunIotModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunIotModelResponse {
        try await self.client.execute(action: "RunIotModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 定义的物模型发布
    ///
    /// 本接口（RunIotModel）用于对定义的物模型进行发布。
    @inlinable
    public func runIotModel(productId: String, iotModel: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RunIotModelResponse > {
        self.runIotModel(RunIotModelRequest(productId: productId, iotModel: iotModel), logger: logger, on: eventLoop)
    }

    /// 定义的物模型发布
    ///
    /// 本接口（RunIotModel）用于对定义的物模型进行发布。
    @inlinable
    public func runIotModel(productId: String, iotModel: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunIotModelResponse {
        try await self.runIotModel(RunIotModelRequest(productId: productId, iotModel: iotModel), logger: logger, on: eventLoop)
    }
}
