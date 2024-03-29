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

import Logging
import NIOCore
import TecoCore

extension Cdn {
    /// ListDiagnoseReport请求参数结构体
    public struct ListDiagnoseReportRequest: TCRequest {
        /// 用于搜索诊断URL的关键字，不填时返回用户所有的诊断任务。
        public let keyWords: String?

        /// 用于搜索诊断系统返回的诊断链接，形如：http://cdn.cloud.tencent.com/self_diagnose/xxxxx
        public let diagnoseLink: String?

        /// 请求源带协议头，形如：https://console.cloud.tencent.com
        public let origin: String?

        public init(keyWords: String? = nil, diagnoseLink: String? = nil, origin: String? = nil) {
            self.keyWords = keyWords
            self.diagnoseLink = diagnoseLink
            self.origin = origin
        }

        enum CodingKeys: String, CodingKey {
            case keyWords = "KeyWords"
            case diagnoseLink = "DiagnoseLink"
            case origin = "Origin"
        }
    }

    /// ListDiagnoseReport返回参数结构体
    public struct ListDiagnoseReportResponse: TCResponse {
        /// 诊断信息。
        public let data: [DiagnoseInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取诊断任务列表(已废弃)
    ///
    /// ### _**该接口已废弃** _
    ///
    /// ListDiagnoseReport 用于获取用户诊断URL访问后各个子任务的简要详情。
    @inlinable
    public func listDiagnoseReport(_ input: ListDiagnoseReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDiagnoseReportResponse> {
        self.client.execute(action: "ListDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断任务列表(已废弃)
    ///
    /// ### _**该接口已废弃** _
    ///
    /// ListDiagnoseReport 用于获取用户诊断URL访问后各个子任务的简要详情。
    @inlinable
    public func listDiagnoseReport(_ input: ListDiagnoseReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDiagnoseReportResponse {
        try await self.client.execute(action: "ListDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取诊断任务列表(已废弃)
    ///
    /// ### _**该接口已废弃** _
    ///
    /// ListDiagnoseReport 用于获取用户诊断URL访问后各个子任务的简要详情。
    @inlinable
    public func listDiagnoseReport(keyWords: String? = nil, diagnoseLink: String? = nil, origin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDiagnoseReportResponse> {
        self.listDiagnoseReport(.init(keyWords: keyWords, diagnoseLink: diagnoseLink, origin: origin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取诊断任务列表(已废弃)
    ///
    /// ### _**该接口已废弃** _
    ///
    /// ListDiagnoseReport 用于获取用户诊断URL访问后各个子任务的简要详情。
    @inlinable
    public func listDiagnoseReport(keyWords: String? = nil, diagnoseLink: String? = nil, origin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDiagnoseReportResponse {
        try await self.listDiagnoseReport(.init(keyWords: keyWords, diagnoseLink: diagnoseLink, origin: origin), region: region, logger: logger, on: eventLoop)
    }
}
