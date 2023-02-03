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

extension Mps {
    /// DescribePersonSamples请求参数结构体
    public struct DescribePersonSamplesRequest: TCRequestModel {
        /// 拉取的素材类型，可选值：
        /// <li>UserDefine：用户自定义素材库；</li>
        /// <li>Default：系统默认素材库。</li>
        ///
        /// 默认值：UserDefine，拉取用户自定义素材库素材。
        /// 说明：如果是拉取系统默认素材库，只能使用素材名字或者素材 ID + 素材名字的方式进行拉取，且人脸图片只返回一张。
        public let type: String?

        /// 素材 ID，数组长度限制：100。
        public let personIds: [String]?

        /// 素材名称，数组长度限制：20。
        public let names: [String]?

        /// 素材标签，数组长度限制：20。
        public let tags: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：100，最大值：100。
        public let limit: UInt64?

        public init(type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.type = type
            self.personIds = personIds
            self.names = names
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case personIds = "PersonIds"
            case names = "Names"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribePersonSamples返回参数结构体
    public struct DescribePersonSamplesResponse: TCResponseModel {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 素材信息。
        public let personSet: [AiSamplePerson]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case personSet = "PersonSet"
            case requestId = "RequestId"
        }
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonSamplesResponse> {
        self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(_ input: DescribePersonSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonSamplesResponse {
        try await self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonSamplesResponse> {
        let input = DescribePersonSamplesRequest(type: type, personIds: personIds, names: names, tags: tags, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取素材样本列表
    ///
    /// 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。
    @inlinable
    public func describePersonSamples(type: String? = nil, personIds: [String]? = nil, names: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonSamplesResponse {
        let input = DescribePersonSamplesRequest(type: type, personIds: personIds, names: names, tags: tags, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePersonSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
