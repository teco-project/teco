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

extension Ess {
    /// DescribeFileUrls请求参数结构体
    public struct DescribeFileUrlsRequest: TCRequestModel {
        /// 调用方用户信息，UserId 必填
        public let `operator`: UserInfo

        /// 文件对应的业务类型，目前支持：
        /// - 流程 "FLOW"，如需下载合同文件请选择此项
        /// - 模板 "TEMPLATE"
        /// - 文档 "DOCUMENT"
        /// - 印章  “SEAL”
        public let businessType: String

        /// 业务编号的数组，如流程编号、模板编号、文档编号、印章编号。如需下载合同文件请传入FlowId
        /// 最大支持20个资源
        public let businessIds: [String]

        /// 下载后的文件命名，只有FileType为zip的时候生效
        public let fileName: String?

        /// 文件类型，"JPG", "PDF","ZIP"等
        public let fileType: String?

        /// 指定资源起始偏移量，默认0
        public let offset: Int64?

        /// 指定资源数量，查询全部资源则传入-1
        public let limit: Int64?

        /// 下载url过期时间，单位秒。0: 按默认值5分钟，允许范围：1s~24x60x60s(1天)
        public let urlTtl: Int64?

        /// 暂不开放
        public let ccToken: String?

        /// 暂不开放
        public let scene: String?

        /// 应用相关信息
        public let agent: Agent?

        public init(operator: UserInfo, businessType: String, businessIds: [String], fileName: String? = nil, fileType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, urlTtl: Int64? = nil, ccToken: String? = nil, scene: String? = nil, agent: Agent? = nil) {
            self.operator = `operator`
            self.businessType = businessType
            self.businessIds = businessIds
            self.fileName = fileName
            self.fileType = fileType
            self.offset = offset
            self.limit = limit
            self.urlTtl = urlTtl
            self.ccToken = ccToken
            self.scene = scene
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case businessType = "BusinessType"
            case businessIds = "BusinessIds"
            case fileName = "FileName"
            case fileType = "FileType"
            case offset = "Offset"
            case limit = "Limit"
            case urlTtl = "UrlTtl"
            case ccToken = "CcToken"
            case scene = "Scene"
            case agent = "Agent"
        }
    }

    /// DescribeFileUrls返回参数结构体
    public struct DescribeFileUrlsResponse: TCResponseModel {
        /// URL信息
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

    /// 查询文件下载URL
    ///
    /// 查询文件下载URL
    /// 适用场景：通过传参合同流程编号，下载对应的合同PDF文件流到本地。
    @inlinable
    public func describeFileUrls(_ input: DescribeFileUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileUrlsResponse> {
        self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件下载URL
    ///
    /// 查询文件下载URL
    /// 适用场景：通过传参合同流程编号，下载对应的合同PDF文件流到本地。
    @inlinable
    public func describeFileUrls(_ input: DescribeFileUrlsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileUrlsResponse {
        try await self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文件下载URL
    ///
    /// 查询文件下载URL
    /// 适用场景：通过传参合同流程编号，下载对应的合同PDF文件流到本地。
    @inlinable
    public func describeFileUrls(operator: UserInfo, businessType: String, businessIds: [String], fileName: String? = nil, fileType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, urlTtl: Int64? = nil, ccToken: String? = nil, scene: String? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileUrlsResponse> {
        let input = DescribeFileUrlsRequest(operator: `operator`, businessType: businessType, businessIds: businessIds, fileName: fileName, fileType: fileType, offset: offset, limit: limit, urlTtl: urlTtl, ccToken: ccToken, scene: scene, agent: agent)
        return self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文件下载URL
    ///
    /// 查询文件下载URL
    /// 适用场景：通过传参合同流程编号，下载对应的合同PDF文件流到本地。
    @inlinable
    public func describeFileUrls(operator: UserInfo, businessType: String, businessIds: [String], fileName: String? = nil, fileType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, urlTtl: Int64? = nil, ccToken: String? = nil, scene: String? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileUrlsResponse {
        let input = DescribeFileUrlsRequest(operator: `operator`, businessType: businessType, businessIds: businessIds, fileName: fileName, fileType: fileType, offset: offset, limit: limit, urlTtl: urlTtl, ccToken: ccToken, scene: scene, agent: agent)
        return try await self.client.execute(action: "DescribeFileUrls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
