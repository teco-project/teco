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

extension Iotexplorer {
    /// CreateBatchProduction请求参数结构体
    public struct CreateBatchProductionRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 产品ID
        public let productId: String

        /// 烧录方式，0为直接烧录，1为动态注册。
        public let burnMethod: Int64

        /// 生成方式，0为系统生成，1为文件上传。
        public let generationMethod: Int64

        /// 文件上传URL，用于文件上传时填写。
        public let uploadUrl: String?

        /// 量产数量，用于系统生成时填写。
        public let batchCnt: Int64?

        /// 是否生成二维码,0为不生成，1为生成。
        public let generationQRCode: Int64?

        public init(projectId: String, productId: String, burnMethod: Int64, generationMethod: Int64, uploadUrl: String? = nil, batchCnt: Int64? = nil, generationQRCode: Int64? = nil) {
            self.projectId = projectId
            self.productId = productId
            self.burnMethod = burnMethod
            self.generationMethod = generationMethod
            self.uploadUrl = uploadUrl
            self.batchCnt = batchCnt
            self.generationQRCode = generationQRCode
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case productId = "ProductId"
            case burnMethod = "BurnMethod"
            case generationMethod = "GenerationMethod"
            case uploadUrl = "UploadUrl"
            case batchCnt = "BatchCnt"
            case generationQRCode = "GenerationQRCode"
        }
    }

    /// CreateBatchProduction返回参数结构体
    public struct CreateBatchProductionResponse: TCResponseModel {
        /// 项目Id
        public let projectId: String

        /// 产品Id
        public let productId: String

        /// 量产id
        public let batchProductionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case productId = "ProductId"
            case batchProductionId = "BatchProductionId"
            case requestId = "RequestId"
        }
    }

    /// 创建量产任务
    ///
    /// 用于新建批量生产设备
    @inlinable
    public func createBatchProduction(_ input: CreateBatchProductionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchProductionResponse> {
        self.client.execute(action: "CreateBatchProduction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建量产任务
    ///
    /// 用于新建批量生产设备
    @inlinable
    public func createBatchProduction(_ input: CreateBatchProductionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchProductionResponse {
        try await self.client.execute(action: "CreateBatchProduction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建量产任务
    ///
    /// 用于新建批量生产设备
    @inlinable
    public func createBatchProduction(projectId: String, productId: String, burnMethod: Int64, generationMethod: Int64, uploadUrl: String? = nil, batchCnt: Int64? = nil, generationQRCode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchProductionResponse> {
        self.createBatchProduction(.init(projectId: projectId, productId: productId, burnMethod: burnMethod, generationMethod: generationMethod, uploadUrl: uploadUrl, batchCnt: batchCnt, generationQRCode: generationQRCode), region: region, logger: logger, on: eventLoop)
    }

    /// 创建量产任务
    ///
    /// 用于新建批量生产设备
    @inlinable
    public func createBatchProduction(projectId: String, productId: String, burnMethod: Int64, generationMethod: Int64, uploadUrl: String? = nil, batchCnt: Int64? = nil, generationQRCode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchProductionResponse {
        try await self.createBatchProduction(.init(projectId: projectId, productId: productId, burnMethod: burnMethod, generationMethod: generationMethod, uploadUrl: uploadUrl, batchCnt: batchCnt, generationQRCode: generationQRCode), region: region, logger: logger, on: eventLoop)
    }
}
