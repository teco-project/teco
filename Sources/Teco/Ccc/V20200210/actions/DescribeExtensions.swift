//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ccc {
    /// DescribeExtensions请求参数结构体
    public struct DescribeExtensionsRequest: TCRequestModel {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 分页页号（从0开始）
        public let pageNumber: Int64

        /// 筛选分机号列表
        public let extensionIds: [String]?

        /// 分页大小
        public let pageSize: Int64?

        /// 模糊查询字段（模糊查询分机号、分机名称、坐席邮箱、坐席名称）
        public let fuzzingKeyWord: String?

        /// 是否需要返回话机当前状态
        public let isNeedStatus: Bool?

        public init(sdkAppId: UInt64, pageNumber: Int64, extensionIds: [String]? = nil, pageSize: Int64? = nil, fuzzingKeyWord: String? = nil, isNeedStatus: Bool? = nil) {
            self.sdkAppId = sdkAppId
            self.pageNumber = pageNumber
            self.extensionIds = extensionIds
            self.pageSize = pageSize
            self.fuzzingKeyWord = fuzzingKeyWord
            self.isNeedStatus = isNeedStatus
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pageNumber = "PageNumber"
            case extensionIds = "ExtensionIds"
            case pageSize = "PageSize"
            case fuzzingKeyWord = "FuzzingKeyWord"
            case isNeedStatus = "IsNeedStatus"
        }
    }

    /// DescribeExtensions返回参数结构体
    public struct DescribeExtensionsResponse: TCResponseModel {
        /// 查询总数
        public let total: Int64

        /// 话机信息列表
        public let extensionList: [ExtensionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case extensionList = "ExtensionList"
            case requestId = "RequestId"
        }
    }

    /// 查询话机列表信息
    @inlinable
    public func describeExtensions(_ input: DescribeExtensionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtensionsResponse> {
        self.client.execute(action: "DescribeExtensions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询话机列表信息
    @inlinable
    public func describeExtensions(_ input: DescribeExtensionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtensionsResponse {
        try await self.client.execute(action: "DescribeExtensions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询话机列表信息
    @inlinable
    public func describeExtensions(sdkAppId: UInt64, pageNumber: Int64, extensionIds: [String]? = nil, pageSize: Int64? = nil, fuzzingKeyWord: String? = nil, isNeedStatus: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtensionsResponse> {
        self.describeExtensions(DescribeExtensionsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, extensionIds: extensionIds, pageSize: pageSize, fuzzingKeyWord: fuzzingKeyWord, isNeedStatus: isNeedStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询话机列表信息
    @inlinable
    public func describeExtensions(sdkAppId: UInt64, pageNumber: Int64, extensionIds: [String]? = nil, pageSize: Int64? = nil, fuzzingKeyWord: String? = nil, isNeedStatus: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtensionsResponse {
        try await self.describeExtensions(DescribeExtensionsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, extensionIds: extensionIds, pageSize: pageSize, fuzzingKeyWord: fuzzingKeyWord, isNeedStatus: isNeedStatus), region: region, logger: logger, on: eventLoop)
    }
}
