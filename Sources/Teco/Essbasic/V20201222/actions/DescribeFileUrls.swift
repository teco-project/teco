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

extension Essbasic {
    /// DescribeFileUrls请求参数结构体
    public struct DescribeFileUrlsRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 业务编号数组，如模板编号、文档编号、印章编号、流程编号、目录编号
        public let businessIds: [String]

        /// 业务类型：
        /// 1. TEMPLATE - 模板
        /// 2. SEAL - 印章
        /// 3. FLOW - 流程
        /// 4.CATALOG - 目录
        public let businessType: String

        /// 下载后的文件命名，只有FileType为“ZIP”时生效
        public let fileName: String?

        /// 单个业务ID多个资源情况下，指定资源起始偏移量
        public let resourceOffset: Int64?

        /// 单个业务ID多个资源情况下，指定资源数量
        public let resourceLimit: Int64?

        /// 文件类型，支持"JPG", "PDF","ZIP"等，默认为上传的文件类型
        public let fileType: String?

        public init(caller: Caller, businessIds: [String], businessType: String, fileName: String? = nil, resourceOffset: Int64? = nil, resourceLimit: Int64? = nil, fileType: String? = nil) {
            self.caller = caller
            self.businessIds = businessIds
            self.businessType = businessType
            self.fileName = fileName
            self.resourceOffset = resourceOffset
            self.resourceLimit = resourceLimit
            self.fileType = fileType
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case businessIds = "BusinessIds"
            case businessType = "BusinessType"
            case fileName = "FileName"
            case resourceOffset = "ResourceOffset"
            case resourceLimit = "ResourceLimit"
            case fileType = "FileType"
        }
    }

    /// DescribeFileUrls返回参数结构体
    public struct DescribeFileUrlsResponse: TCResponseModel {
        /// 文件下载URL数组
        public let fileUrls: [FileUrl]

        /// URL数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileUrls = "FileUrls"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询文件下载链接
    ///
    /// 此接口（DescribeFileUrls）用于获取签署文件下载的URL。
    @inlinable
    public func describeFileUrls(_ input: DescribeFileUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileUrlsResponse> {
        self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件下载链接
    ///
    /// 此接口（DescribeFileUrls）用于获取签署文件下载的URL。
    @inlinable
    public func describeFileUrls(_ input: DescribeFileUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileUrlsResponse {
        try await self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件下载链接
    ///
    /// 此接口（DescribeFileUrls）用于获取签署文件下载的URL。
    @inlinable
    public func describeFileUrls(caller: Caller, businessIds: [String], businessType: String, fileName: String? = nil, resourceOffset: Int64? = nil, resourceLimit: Int64? = nil, fileType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileUrlsResponse> {
        self.describeFileUrls(DescribeFileUrlsRequest(caller: caller, businessIds: businessIds, businessType: businessType, fileName: fileName, resourceOffset: resourceOffset, resourceLimit: resourceLimit, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文件下载链接
    ///
    /// 此接口（DescribeFileUrls）用于获取签署文件下载的URL。
    @inlinable
    public func describeFileUrls(caller: Caller, businessIds: [String], businessType: String, fileName: String? = nil, resourceOffset: Int64? = nil, resourceLimit: Int64? = nil, fileType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileUrlsResponse {
        try await self.describeFileUrls(DescribeFileUrlsRequest(caller: caller, businessIds: businessIds, businessType: businessType, fileName: fileName, resourceOffset: resourceOffset, resourceLimit: resourceLimit, fileType: fileType), region: region, logger: logger, on: eventLoop)
    }
}
