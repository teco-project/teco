//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cloudhsm {
    /// DescribeVsms请求参数结构体
    public struct DescribeVsmsRequest: TCRequestModel {
        /// 偏移
        public let offset: Int64

        /// 最大数量
        public let limit: Int64

        /// 查询关键字
        public let searchWord: String?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        /// 设备所属的厂商名称，根据厂商来进行筛选
        public let manufacturer: String?

        /// Hsm服务类型，可选virtualization、physical、GHSM、EHSM、SHSM、all
        public let hsmType: String?

        public init(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.tagFilters = tagFilters
            self.manufacturer = manufacturer
            self.hsmType = hsmType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case tagFilters = "TagFilters"
            case manufacturer = "Manufacturer"
            case hsmType = "HsmType"
        }
    }

    /// DescribeVsms返回参数结构体
    public struct DescribeVsmsResponse: TCResponseModel {
        /// 获取实例的总个数
        public let totalCount: Int64

        /// 资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vsmList: [ResourceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vsmList = "VsmList"
            case requestId = "RequestId"
        }
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(_ input: DescribeVsmsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVsmsResponse > {
        self.client.execute(action: "DescribeVsms", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(_ input: DescribeVsmsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVsmsResponse {
        try await self.client.execute(action: "DescribeVsms", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVsmsResponse > {
        self.describeVsms(DescribeVsmsRequest(offset: offset, limit: limit, searchWord: searchWord, tagFilters: tagFilters, manufacturer: manufacturer, hsmType: hsmType), logger: logger, on: eventLoop)
    }

    /// 获取用户VSM列表
    @inlinable
    public func describeVsms(offset: Int64, limit: Int64, searchWord: String? = nil, tagFilters: [TagFilter]? = nil, manufacturer: String? = nil, hsmType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVsmsResponse {
        try await self.describeVsms(DescribeVsmsRequest(offset: offset, limit: limit, searchWord: searchWord, tagFilters: tagFilters, manufacturer: manufacturer, hsmType: hsmType), logger: logger, on: eventLoop)
    }
}
