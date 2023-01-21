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

extension Essbasic {
    /// UploadFiles请求参数结构体
    public struct UploadFilesRequest: TCRequestModel {
        /// 应用相关信息，若是渠道版调用 appid 和proxyappid 必填
        public let agent: Agent

        /// 文件对应业务类型
        /// 1. TEMPLATE - 模板； 文件类型：.pdf/.doc/.docx/.html
        /// 2. DOCUMENT - 签署过程及签署后的合同文档/图片控件 文件类型：.pdf/.doc/.docx/.jpg/.png/.xls.xlsx/.html
        public let businessType: String

        /// 上传文件内容数组，最多支持20个文件
        public let fileInfos: [UploadFile]?

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, businessType: String, fileInfos: [UploadFile]? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.businessType = businessType
            self.fileInfos = fileInfos
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case businessType = "BusinessType"
            case fileInfos = "FileInfos"
            case `operator` = "Operator"
        }
    }

    /// UploadFiles返回参数结构体
    public struct UploadFilesResponse: TCResponseModel {
        /// 文件id数组，有效期一个小时；有效期内此文件id可以反复使用
        public let fileIds: [String]

        /// 上传成功文件数量
        public let totalCount: Int64

        /// 文件Url
        public let fileUrls: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case totalCount = "TotalCount"
            case fileUrls = "FileUrls"
            case requestId = "RequestId"
        }
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    /// 调用时需要设置Domain, 正式环境为 file.ess.tencent.cn。
    /// 代码示例：
    /// HttpProfile httpProfile = new HttpProfile();
    /// httpProfile.setEndpoint("file.test.ess.tencent.cn");
    @inlinable
    public func uploadFiles(_ input: UploadFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFilesResponse> {
        self.client.execute(action: "UploadFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    /// 调用时需要设置Domain, 正式环境为 file.ess.tencent.cn。
    /// 代码示例：
    /// HttpProfile httpProfile = new HttpProfile();
    /// httpProfile.setEndpoint("file.test.ess.tencent.cn");
    @inlinable
    public func uploadFiles(_ input: UploadFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFilesResponse {
        try await self.client.execute(action: "UploadFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    /// 调用时需要设置Domain, 正式环境为 file.ess.tencent.cn。
    /// 代码示例：
    /// HttpProfile httpProfile = new HttpProfile();
    /// httpProfile.setEndpoint("file.test.ess.tencent.cn");
    @inlinable
    public func uploadFiles(agent: Agent, businessType: String, fileInfos: [UploadFile]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFilesResponse> {
        self.uploadFiles(UploadFilesRequest(agent: agent, businessType: businessType, fileInfos: fileInfos, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    /// 调用时需要设置Domain, 正式环境为 file.ess.tencent.cn。
    /// 代码示例：
    /// HttpProfile httpProfile = new HttpProfile();
    /// httpProfile.setEndpoint("file.test.ess.tencent.cn");
    @inlinable
    public func uploadFiles(agent: Agent, businessType: String, fileInfos: [UploadFile]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFilesResponse {
        try await self.uploadFiles(UploadFilesRequest(agent: agent, businessType: businessType, fileInfos: fileInfos, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
