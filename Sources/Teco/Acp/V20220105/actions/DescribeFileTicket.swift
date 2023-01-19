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

extension Acp {
    /// DescribeFileTicket请求参数结构体
    public struct DescribeFileTicketRequest: TCRequestModel {
        /// 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        public let source: Int64

        /// 应用平台, 0:android, 1:ios, 2:小程序
        public let platform: Int64

        public init(source: Int64, platform: Int64) {
            self.source = source
            self.platform = platform
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case platform = "Platform"
        }
    }

    /// DescribeFileTicket返回参数结构体
    public struct DescribeFileTicketResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let result: Int64

        /// 上传url(任务来源为2时:Post方法（100:apk,101:txt）, 任务来源为1时:put方法)
        public let uploadUrl: String

        /// 上传url鉴权信息(任务来源为1时上传需要, Authorization参数值)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uploadSign: String?

        /// 上传文件ID(任务来源为1时提交诊断任务需要)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fildID: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case uploadUrl = "UploadUrl"
            case uploadSign = "UploadSign"
            case fildID = "FildID"
            case requestId = "RequestId"
        }
    }

    /// 获取应用合规文件上传凭证接口
    ///
    /// 获取应用合规文件上传凭证，用于上传诊断文件
    @inlinable
    public func describeFileTicket(_ input: DescribeFileTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileTicketResponse> {
        self.client.execute(action: "DescribeFileTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用合规文件上传凭证接口
    ///
    /// 获取应用合规文件上传凭证，用于上传诊断文件
    @inlinable
    public func describeFileTicket(_ input: DescribeFileTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileTicketResponse {
        try await self.client.execute(action: "DescribeFileTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用合规文件上传凭证接口
    ///
    /// 获取应用合规文件上传凭证，用于上传诊断文件
    @inlinable
    public func describeFileTicket(source: Int64, platform: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileTicketResponse> {
        self.describeFileTicket(DescribeFileTicketRequest(source: source, platform: platform), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用合规文件上传凭证接口
    ///
    /// 获取应用合规文件上传凭证，用于上传诊断文件
    @inlinable
    public func describeFileTicket(source: Int64, platform: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileTicketResponse {
        try await self.describeFileTicket(DescribeFileTicketRequest(source: source, platform: platform), region: region, logger: logger, on: eventLoop)
    }
}
