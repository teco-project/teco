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

import TecoCore

extension Cls {
    /// CreateCosRecharge请求参数结构体
    public struct CreateCosRechargeRequest: TCRequestModel {
        /// 日志主题 ID
        public let topicId: String

        /// 日志集ID
        public let logsetId: String

        /// 投递任务名称
        public let name: String

        /// COS存储桶
        public let bucket: String

        /// COS存储桶所在地域
        public let bucketRegion: String

        /// COS文件所在文件夹的前缀
        public let prefix: String

        /// 采集的日志类型，json_log代表json格式日志，delimiter_log代表分隔符格式日志，minimalist_log代表单行全文；
        /// 默认为minimalist_log
        public let logType: String

        /// supported: "", "gzip", "lzop", "snappy”; 默认空
        public let compress: String?

        /// 提取规则，如果设置了ExtractRule，则必须设置LogType
        public let extractRuleInfo: ExtractRuleInfo?

        public init(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, logType: String, compress: String? = nil, extractRuleInfo: ExtractRuleInfo? = nil) {
            self.topicId = topicId
            self.logsetId = logsetId
            self.name = name
            self.bucket = bucket
            self.bucketRegion = bucketRegion
            self.prefix = prefix
            self.logType = logType
            self.compress = compress
            self.extractRuleInfo = extractRuleInfo
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case logsetId = "LogsetId"
            case name = "Name"
            case bucket = "Bucket"
            case bucketRegion = "BucketRegion"
            case prefix = "Prefix"
            case logType = "LogType"
            case compress = "Compress"
            case extractRuleInfo = "ExtractRuleInfo"
        }
    }

    /// CreateCosRecharge返回参数结构体
    public struct CreateCosRechargeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建cos导入任务
    ///
    /// 本接口用于创建cos导入任务
    @inlinable @discardableResult
    public func createCosRecharge(_ input: CreateCosRechargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosRechargeResponse> {
        self.client.execute(action: "CreateCosRecharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建cos导入任务
    ///
    /// 本接口用于创建cos导入任务
    @inlinable @discardableResult
    public func createCosRecharge(_ input: CreateCosRechargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosRechargeResponse {
        try await self.client.execute(action: "CreateCosRecharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建cos导入任务
    ///
    /// 本接口用于创建cos导入任务
    @inlinable @discardableResult
    public func createCosRecharge(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, logType: String, compress: String? = nil, extractRuleInfo: ExtractRuleInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosRechargeResponse> {
        self.createCosRecharge(.init(topicId: topicId, logsetId: logsetId, name: name, bucket: bucket, bucketRegion: bucketRegion, prefix: prefix, logType: logType, compress: compress, extractRuleInfo: extractRuleInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 创建cos导入任务
    ///
    /// 本接口用于创建cos导入任务
    @inlinable @discardableResult
    public func createCosRecharge(topicId: String, logsetId: String, name: String, bucket: String, bucketRegion: String, prefix: String, logType: String, compress: String? = nil, extractRuleInfo: ExtractRuleInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosRechargeResponse {
        try await self.createCosRecharge(.init(topicId: topicId, logsetId: logsetId, name: name, bucket: bucket, bucketRegion: bucketRegion, prefix: prefix, logType: logType, compress: compress, extractRuleInfo: extractRuleInfo), region: region, logger: logger, on: eventLoop)
    }
}