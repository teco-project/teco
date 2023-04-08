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

extension Trp {
    /// CreateTraceCodesAsync请求参数结构体
    public struct CreateTraceCodesAsyncRequest: TCRequestModel {
        /// 企业ID
        public let corpId: UInt64?

        /// 批次ID
        public let batchId: String?

        /// 上传文件Key，仅支持 csv 或者 zip 类型
        public let fileKey: String?

        public init(corpId: UInt64? = nil, batchId: String? = nil, fileKey: String? = nil) {
            self.corpId = corpId
            self.batchId = batchId
            self.fileKey = fileKey
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case batchId = "BatchId"
            case fileKey = "FileKey"
        }
    }

    /// CreateTraceCodesAsync返回参数结构体
    public struct CreateTraceCodesAsyncResponse: TCResponseModel {
        /// 批次ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 异步导入激活码包
    ///
    /// 异步导入激活码包，如果是第三方码包，需要域名跟配置的匹配
    @inlinable
    public func createTraceCodesAsync(_ input: CreateTraceCodesAsyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceCodesAsyncResponse> {
        self.client.execute(action: "CreateTraceCodesAsync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 异步导入激活码包
    ///
    /// 异步导入激活码包，如果是第三方码包，需要域名跟配置的匹配
    @inlinable
    public func createTraceCodesAsync(_ input: CreateTraceCodesAsyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceCodesAsyncResponse {
        try await self.client.execute(action: "CreateTraceCodesAsync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 异步导入激活码包
    ///
    /// 异步导入激活码包，如果是第三方码包，需要域名跟配置的匹配
    @inlinable
    public func createTraceCodesAsync(corpId: UInt64? = nil, batchId: String? = nil, fileKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceCodesAsyncResponse> {
        self.createTraceCodesAsync(.init(corpId: corpId, batchId: batchId, fileKey: fileKey), region: region, logger: logger, on: eventLoop)
    }

    /// 异步导入激活码包
    ///
    /// 异步导入激活码包，如果是第三方码包，需要域名跟配置的匹配
    @inlinable
    public func createTraceCodesAsync(corpId: UInt64? = nil, batchId: String? = nil, fileKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceCodesAsyncResponse {
        try await self.createTraceCodesAsync(.init(corpId: corpId, batchId: batchId, fileKey: fileKey), region: region, logger: logger, on: eventLoop)
    }
}
