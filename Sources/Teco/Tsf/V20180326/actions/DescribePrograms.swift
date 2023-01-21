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

extension Tsf {
    /// DescribePrograms请求参数结构体
    public struct DescribeProgramsRequest: TCRequestModel {
        /// 模糊查询数据集ID，数据集名称，不传入时查询全量
        public let searchWord: String?

        /// 每页数量
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        public init(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.searchWord = searchWord
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribePrograms返回参数结构体
    public struct DescribeProgramsResponse: TCResponseModel {
        /// 数据集列表
        public let result: PagedProgram

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProgramsResponse> {
        self.client.execute(action: "DescribePrograms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(_ input: DescribeProgramsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramsResponse {
        try await self.client.execute(action: "DescribePrograms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProgramsResponse> {
        self.describePrograms(DescribeProgramsRequest(searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据集列表
    @inlinable
    public func describePrograms(searchWord: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramsResponse {
        try await self.describePrograms(DescribeProgramsRequest(searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
