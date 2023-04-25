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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cdn {
    /// CreateDiagnoseUrl请求参数结构体
    public struct CreateDiagnoseUrlRequest: TCRequestModel {
        /// 需诊断的url，形如：http://www.test.com/test.txt。
        public let url: String

        /// 请求源带协议头，形如：https://console.cloud.tencent.com
        public let origin: String?

        public init(url: String, origin: String? = nil) {
            self.url = url
            self.origin = origin
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case origin = "Origin"
        }
    }

    /// CreateDiagnoseUrl返回参数结构体
    public struct CreateDiagnoseUrlResponse: TCResponseModel {
        /// 系统生成的诊断链接，一个诊断链接最多可访问10次，有效期为24h。
        public let diagnoseLink: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diagnoseLink = "DiagnoseLink"
            case requestId = "RequestId"
        }
    }

    /// 添加诊断URL(即将下线)
    ///
    /// CreateDiagnoseUrl 用于添加域名诊断任务URL， <font color=red>将于 **2023年5月31日** 下线</font><br>
    @inlinable
    public func createDiagnoseUrl(_ input: CreateDiagnoseUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiagnoseUrlResponse> {
        self.client.execute(action: "CreateDiagnoseUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加诊断URL(即将下线)
    ///
    /// CreateDiagnoseUrl 用于添加域名诊断任务URL， <font color=red>将于 **2023年5月31日** 下线</font><br>
    @inlinable
    public func createDiagnoseUrl(_ input: CreateDiagnoseUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDiagnoseUrlResponse {
        try await self.client.execute(action: "CreateDiagnoseUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加诊断URL(即将下线)
    ///
    /// CreateDiagnoseUrl 用于添加域名诊断任务URL， <font color=red>将于 **2023年5月31日** 下线</font><br>
    @inlinable
    public func createDiagnoseUrl(url: String, origin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiagnoseUrlResponse> {
        self.createDiagnoseUrl(.init(url: url, origin: origin), region: region, logger: logger, on: eventLoop)
    }

    /// 添加诊断URL(即将下线)
    ///
    /// CreateDiagnoseUrl 用于添加域名诊断任务URL， <font color=red>将于 **2023年5月31日** 下线</font><br>
    @inlinable
    public func createDiagnoseUrl(url: String, origin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDiagnoseUrlResponse {
        try await self.createDiagnoseUrl(.init(url: url, origin: origin), region: region, logger: logger, on: eventLoop)
    }
}
