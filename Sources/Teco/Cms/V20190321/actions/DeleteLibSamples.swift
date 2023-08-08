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

extension Cms {
    /// DeleteLibSamples请求参数结构体
    public struct DeleteLibSamplesRequest: TCRequestModel {
        /// 关键词ID列表
        public let sampleIDs: [String]

        /// 词库ID
        public let libID: String?

        /// 关键词内容列表
        public let sampleContents: [String]?

        public init(sampleIDs: [String], libID: String? = nil, sampleContents: [String]? = nil) {
            self.sampleIDs = sampleIDs
            self.libID = libID
            self.sampleContents = sampleContents
        }

        enum CodingKeys: String, CodingKey {
            case sampleIDs = "SampleIDs"
            case libID = "LibID"
            case sampleContents = "SampleContents"
        }
    }

    /// DeleteLibSamples返回参数结构体
    public struct DeleteLibSamplesResponse: TCResponseModel {
        /// 删除成功的数量
        public let count: Int64

        /// 每个关键词删除的结果
        public let details: [DeleteSampleDetails]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case details = "Details"
            case requestId = "RequestId"
        }
    }

    /// 删除关键词接口
    @inlinable
    public func deleteLibSamples(_ input: DeleteLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLibSamplesResponse> {
        self.client.execute(action: "DeleteLibSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除关键词接口
    @inlinable
    public func deleteLibSamples(_ input: DeleteLibSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLibSamplesResponse {
        try await self.client.execute(action: "DeleteLibSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除关键词接口
    @inlinable
    public func deleteLibSamples(sampleIDs: [String], libID: String? = nil, sampleContents: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLibSamplesResponse> {
        self.deleteLibSamples(.init(sampleIDs: sampleIDs, libID: libID, sampleContents: sampleContents), region: region, logger: logger, on: eventLoop)
    }

    /// 删除关键词接口
    @inlinable
    public func deleteLibSamples(sampleIDs: [String], libID: String? = nil, sampleContents: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLibSamplesResponse {
        try await self.deleteLibSamples(.init(sampleIDs: sampleIDs, libID: libID, sampleContents: sampleContents), region: region, logger: logger, on: eventLoop)
    }
}