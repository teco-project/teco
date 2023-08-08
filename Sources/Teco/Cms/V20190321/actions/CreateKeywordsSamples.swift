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
    /// CreateKeywordsSamples请求参数结构体
    public struct CreateKeywordsSamplesRequest: TCRequestModel {
        /// 关键词库信息：单次限制写入2000个，词库总容量不可超过10000个。
        public let userKeywords: [UserKeyword]

        /// 词库ID
        public let libID: String?

        public init(userKeywords: [UserKeyword], libID: String? = nil) {
            self.userKeywords = userKeywords
            self.libID = libID
        }

        enum CodingKeys: String, CodingKey {
            case userKeywords = "UserKeywords"
            case libID = "LibID"
        }
    }

    /// CreateKeywordsSamples返回参数结构体
    public struct CreateKeywordsSamplesResponse: TCResponseModel {
        /// 添加成功的关键词ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sampleIDs: [String]?

        /// 成功入库关键词列表
        public let successInfos: [UserKeywordInfo]

        /// 重复关键词列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dupInfos: [UserKeywordInfo]?

        /// 无效关键词列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let invalidSamples: [InvalidSample]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sampleIDs = "SampleIDs"
            case successInfos = "SuccessInfos"
            case dupInfos = "DupInfos"
            case invalidSamples = "InvalidSamples"
            case requestId = "RequestId"
        }
    }

    /// 创建关键词接口
    @inlinable
    public func createKeywordsSamples(_ input: CreateKeywordsSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeywordsSamplesResponse> {
        self.client.execute(action: "CreateKeywordsSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建关键词接口
    @inlinable
    public func createKeywordsSamples(_ input: CreateKeywordsSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeywordsSamplesResponse {
        try await self.client.execute(action: "CreateKeywordsSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建关键词接口
    @inlinable
    public func createKeywordsSamples(userKeywords: [UserKeyword], libID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeywordsSamplesResponse> {
        self.createKeywordsSamples(.init(userKeywords: userKeywords, libID: libID), region: region, logger: logger, on: eventLoop)
    }

    /// 创建关键词接口
    @inlinable
    public func createKeywordsSamples(userKeywords: [UserKeyword], libID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeywordsSamplesResponse {
        try await self.createKeywordsSamples(.init(userKeywords: userKeywords, libID: libID), region: region, logger: logger, on: eventLoop)
    }
}