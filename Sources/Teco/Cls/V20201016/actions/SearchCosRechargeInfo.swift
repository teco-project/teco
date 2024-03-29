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

extension Cls {
    /// SearchCosRechargeInfo请求参数结构体
    public struct SearchCosRechargeInfoRequest: TCRequest {
        /// 日志主题 ID
        public let topicId: String

        /// 日志集ID
        public let logsetId: String

        /// 投递任务名称
        public let name: String

        /// 存储桶
        public let bucket: String

        /// 存储桶所在地域
        public let bucketRegion: String

        /// cos文件所在文件夹的前缀
        public let prefix: String

        /// 压缩模式:   "", "gzip", "lzop", "snappy”;   默认""
        public let compress: String?

        public init(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, compress: String? = nil) {
            self.topicId = topicId
            self.logsetId = logsetId
            self.name = name
            self.bucket = bucket
            self.bucketRegion = bucketRegion
            self.prefix = prefix
            self.compress = compress
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case logsetId = "LogsetId"
            case name = "Name"
            case bucket = "Bucket"
            case bucketRegion = "BucketRegion"
            case prefix = "Prefix"
            case compress = "Compress"
        }
    }

    /// SearchCosRechargeInfo返回参数结构体
    public struct SearchCosRechargeInfoResponse: TCResponse {
        /// 匹配到的存储桶下的某个文件的前几行数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [String]?

        /// 匹配到的存储桶下的文件个数
        public let sum: UInt64

        /// 当前预览文件路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let path: String?

        /// 预览获取数据失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 状态
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case sum = "Sum"
            case path = "Path"
            case msg = "Msg"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 预览cos导入信息
    ///
    /// 本接口用于预览cos导入信息
    @inlinable
    public func searchCosRechargeInfo(_ input: SearchCosRechargeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchCosRechargeInfoResponse> {
        self.client.execute(action: "SearchCosRechargeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预览cos导入信息
    ///
    /// 本接口用于预览cos导入信息
    @inlinable
    public func searchCosRechargeInfo(_ input: SearchCosRechargeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchCosRechargeInfoResponse {
        try await self.client.execute(action: "SearchCosRechargeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 预览cos导入信息
    ///
    /// 本接口用于预览cos导入信息
    @inlinable
    public func searchCosRechargeInfo(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, compress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchCosRechargeInfoResponse> {
        self.searchCosRechargeInfo(.init(topicId: topicId, logsetId: logsetId, name: name, bucket: bucket, bucketRegion: bucketRegion, prefix: prefix, compress: compress), region: region, logger: logger, on: eventLoop)
    }

    /// 预览cos导入信息
    ///
    /// 本接口用于预览cos导入信息
    @inlinable
    public func searchCosRechargeInfo(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, compress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchCosRechargeInfoResponse {
        try await self.searchCosRechargeInfo(.init(topicId: topicId, logsetId: logsetId, name: name, bucket: bucket, bucketRegion: bucketRegion, prefix: prefix, compress: compress), region: region, logger: logger, on: eventLoop)
    }
}
