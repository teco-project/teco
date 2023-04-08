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

extension Cls {
    /// CreateShipper请求参数结构体
    public struct CreateShipperRequest: TCRequestModel {
        /// 创建的投递规则所属的日志主题ID
        public let topicId: String

        /// 创建的投递规则投递的bucket
        public let bucket: String

        /// 创建的投递规则投递目录的前缀
        public let prefix: String

        /// 投递规则的名字
        public let shipperName: String

        /// 投递的时间间隔，单位 秒，默认300，范围 300-900
        public let interval: UInt64?

        /// 投递的文件的最大值，单位 MB，默认256，范围 100-256
        public let maxSize: UInt64?

        /// 投递日志的过滤规则，匹配的日志进行投递，各rule之间是and关系，最多5个，数组为空则表示不过滤而全部投递
        public let filterRules: [FilterRuleInfo]?

        /// 投递日志的分区规则，支持strftime的时间格式表示
        public let partition: String?

        /// 投递日志的压缩配置
        public let compress: CompressInfo?

        /// 投递日志的内容格式配置
        public let content: ContentInfo?

        /// 投递文件命名配置，0：随机数命名，1：投递时间命名，默认0（随机数命名）
        public let filenameMode: UInt64?

        public init(topicId: String, bucket: String, prefix: String, shipperName: String, interval: UInt64? = nil, maxSize: UInt64? = nil, filterRules: [FilterRuleInfo]? = nil, partition: String? = nil, compress: CompressInfo? = nil, content: ContentInfo? = nil, filenameMode: UInt64? = nil) {
            self.topicId = topicId
            self.bucket = bucket
            self.prefix = prefix
            self.shipperName = shipperName
            self.interval = interval
            self.maxSize = maxSize
            self.filterRules = filterRules
            self.partition = partition
            self.compress = compress
            self.content = content
            self.filenameMode = filenameMode
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case bucket = "Bucket"
            case prefix = "Prefix"
            case shipperName = "ShipperName"
            case interval = "Interval"
            case maxSize = "MaxSize"
            case filterRules = "FilterRules"
            case partition = "Partition"
            case compress = "Compress"
            case content = "Content"
            case filenameMode = "FilenameMode"
        }
    }

    /// CreateShipper返回参数结构体
    public struct CreateShipperResponse: TCResponseModel {
        /// 投递规则ID
        public let shipperId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case shipperId = "ShipperId"
            case requestId = "RequestId"
        }
    }

    /// 创建投递规则
    ///
    /// 创建新的投递规则，【！！！注意】使用此接口，需要检查是否配置了投递COS的角色和权限。如果没有配置，请参考文档投递权限查看和配置https://cloud.tencent.com/document/product/614/71623。
    @inlinable
    public func createShipper(_ input: CreateShipperRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateShipperResponse> {
        self.client.execute(action: "CreateShipper", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建投递规则
    ///
    /// 创建新的投递规则，【！！！注意】使用此接口，需要检查是否配置了投递COS的角色和权限。如果没有配置，请参考文档投递权限查看和配置https://cloud.tencent.com/document/product/614/71623。
    @inlinable
    public func createShipper(_ input: CreateShipperRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateShipperResponse {
        try await self.client.execute(action: "CreateShipper", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建投递规则
    ///
    /// 创建新的投递规则，【！！！注意】使用此接口，需要检查是否配置了投递COS的角色和权限。如果没有配置，请参考文档投递权限查看和配置https://cloud.tencent.com/document/product/614/71623。
    @inlinable
    public func createShipper(topicId: String, bucket: String, prefix: String, shipperName: String, interval: UInt64? = nil, maxSize: UInt64? = nil, filterRules: [FilterRuleInfo]? = nil, partition: String? = nil, compress: CompressInfo? = nil, content: ContentInfo? = nil, filenameMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateShipperResponse> {
        self.createShipper(.init(topicId: topicId, bucket: bucket, prefix: prefix, shipperName: shipperName, interval: interval, maxSize: maxSize, filterRules: filterRules, partition: partition, compress: compress, content: content, filenameMode: filenameMode), region: region, logger: logger, on: eventLoop)
    }

    /// 创建投递规则
    ///
    /// 创建新的投递规则，【！！！注意】使用此接口，需要检查是否配置了投递COS的角色和权限。如果没有配置，请参考文档投递权限查看和配置https://cloud.tencent.com/document/product/614/71623。
    @inlinable
    public func createShipper(topicId: String, bucket: String, prefix: String, shipperName: String, interval: UInt64? = nil, maxSize: UInt64? = nil, filterRules: [FilterRuleInfo]? = nil, partition: String? = nil, compress: CompressInfo? = nil, content: ContentInfo? = nil, filenameMode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateShipperResponse {
        try await self.createShipper(.init(topicId: topicId, bucket: bucket, prefix: prefix, shipperName: shipperName, interval: interval, maxSize: maxSize, filterRules: filterRules, partition: partition, compress: compress, content: content, filenameMode: filenameMode), region: region, logger: logger, on: eventLoop)
    }
}
