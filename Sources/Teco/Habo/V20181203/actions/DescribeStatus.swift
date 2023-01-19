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

extension Habo {
    /// DescribeStatus请求参数结构体
    public struct DescribeStatusRequest: TCRequestModel {
        /// 购买服务后获得的授权帐号，用于保证请求有效性
        public let pk: String

        /// 需要获取分析结果的样本md5
        public let md5: String

        public init(pk: String, md5: String) {
            self.pk = pk
            self.md5 = md5
        }

        enum CodingKeys: String, CodingKey {
            case pk = "Pk"
            case md5 = "Md5"
        }
    }

    /// DescribeStatus返回参数结构体
    public struct DescribeStatusResponse: TCResponseModel {
        /// 接口调用状态，1表示成功，非1表示失败
        public let status: Int64

        /// 成功时返回success，失败时返回具体的失败原因，如样本分析未完成
        public let info: String

        /// 成功时返回样本日志下载地址，该地址10分钟内有效
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取分析结果
    ///
    /// 查询指定md5样本是否分析完成，并获取分析日志下载地址。
    @inlinable
    public func describeStatus(_ input: DescribeStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatusResponse> {
        self.client.execute(action: "DescribeStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分析结果
    ///
    /// 查询指定md5样本是否分析完成，并获取分析日志下载地址。
    @inlinable
    public func describeStatus(_ input: DescribeStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatusResponse {
        try await self.client.execute(action: "DescribeStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分析结果
    ///
    /// 查询指定md5样本是否分析完成，并获取分析日志下载地址。
    @inlinable
    public func describeStatus(pk: String, md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStatusResponse> {
        self.describeStatus(DescribeStatusRequest(pk: pk, md5: md5), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分析结果
    ///
    /// 查询指定md5样本是否分析完成，并获取分析日志下载地址。
    @inlinable
    public func describeStatus(pk: String, md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatusResponse {
        try await self.describeStatus(DescribeStatusRequest(pk: pk, md5: md5), region: region, logger: logger, on: eventLoop)
    }
}
