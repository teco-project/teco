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
    /// DownloadCustomization请求参数结构体
    public struct DownloadCustomizationRequest: TCRequestModel {
        /// 自学习模型ID
        public let modelId: String

        public init(modelId: String) {
            self.modelId = modelId
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
        }
    }

    /// DownloadCustomization返回参数结构体
    public struct DownloadCustomizationResponse: TCResponseModel {
        /// 下载地址
        public let downloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 下载自学习模型语料
    ///
    /// 用户通过该接口可以下载自学习模型的语料
    @inlinable
    public func downloadCustomization(_ input: DownloadCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadCustomizationResponse> {
        self.client.execute(action: "DownloadCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载自学习模型语料
    ///
    /// 用户通过该接口可以下载自学习模型的语料
    @inlinable
    public func downloadCustomization(_ input: DownloadCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadCustomizationResponse {
        try await self.client.execute(action: "DownloadCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载自学习模型语料
    ///
    /// 用户通过该接口可以下载自学习模型的语料
    @inlinable
    public func downloadCustomization(modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadCustomizationResponse> {
        self.downloadCustomization(DownloadCustomizationRequest(modelId: modelId), region: region, logger: logger, on: eventLoop)
    }

    /// 下载自学习模型语料
    ///
    /// 用户通过该接口可以下载自学习模型的语料
    @inlinable
    public func downloadCustomization(modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadCustomizationResponse {
        try await self.downloadCustomization(DownloadCustomizationRequest(modelId: modelId), region: region, logger: logger, on: eventLoop)
    }
}
