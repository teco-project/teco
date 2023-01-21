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

extension Asr {
    /// DeleteCustomization请求参数结构体
    public struct DeleteCustomizationRequest: TCRequestModel {
        /// 要删除的模型ID
        public let modelId: String

        public init(modelId: String) {
            self.modelId = modelId
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
        }
    }

    /// DeleteCustomization返回参数结构体
    public struct DeleteCustomizationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除自学习模型
    ///
    /// 用户通过该接口可以删除自学习模型
    @inlinable @discardableResult
    public func deleteCustomization(_ input: DeleteCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomizationResponse> {
        self.client.execute(action: "DeleteCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自学习模型
    ///
    /// 用户通过该接口可以删除自学习模型
    @inlinable @discardableResult
    public func deleteCustomization(_ input: DeleteCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomizationResponse {
        try await self.client.execute(action: "DeleteCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自学习模型
    ///
    /// 用户通过该接口可以删除自学习模型
    @inlinable @discardableResult
    public func deleteCustomization(modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomizationResponse> {
        self.deleteCustomization(DeleteCustomizationRequest(modelId: modelId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自学习模型
    ///
    /// 用户通过该接口可以删除自学习模型
    @inlinable @discardableResult
    public func deleteCustomization(modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomizationResponse {
        try await self.deleteCustomization(DeleteCustomizationRequest(modelId: modelId), region: region, logger: logger, on: eventLoop)
    }
}
