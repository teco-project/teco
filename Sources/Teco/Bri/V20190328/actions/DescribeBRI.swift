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

import TecoCore

extension Bri {
    /// DescribeBRI请求参数结构体
    public struct DescribeBRIRequest: TCRequestModel {
        /// 业务风险情报请求体
        public let requestData: BRIRequest

        /// 客户用于计费的资源ID
        public let resourceId: String

        public init(requestData: BRIRequest, resourceId: String) {
            self.requestData = requestData
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case requestData = "RequestData"
            case resourceId = "ResourceId"
        }
    }

    /// DescribeBRI返回参数结构体
    public struct DescribeBRIResponse: TCResponseModel {
        /// 业务风险情报响应体
        public let responseData: BRIResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case responseData = "ResponseData"
            case requestId = "RequestId"
        }
    }

    /// 获取业务风险情报
    ///
    /// 输入业务名 (bri_num, bri_dev, bri_ip, bri_apk, bri_url, bri_social 六种之一)  及其 相应字段, 获取业务风险分数和标签。
    ///
    /// 当业务名为bri_num时，必须填PhoneNumber字段.
    ///
    /// 当业务名为bri_dev时, 必须填Imei字段.
    ///
    /// 当业务名为bri_ip时，必须填IP字段.
    ///
    /// 当业务名为bri_apk时，必须填 (PackageName,CertMd5,FileSize) 三个字段 或者 FileMd5一个字段.
    ///
    /// 当业务名为bri_url时，必须填Url字段.
    ///
    /// 当业务名为bri_social时，必须填QQ和Wechat字段两者其中一个或者两个.
    @inlinable
    public func describeBRI(_ input: DescribeBRIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBRIResponse> {
        self.client.execute(action: "DescribeBRI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取业务风险情报
    ///
    /// 输入业务名 (bri_num, bri_dev, bri_ip, bri_apk, bri_url, bri_social 六种之一)  及其 相应字段, 获取业务风险分数和标签。
    ///
    /// 当业务名为bri_num时，必须填PhoneNumber字段.
    ///
    /// 当业务名为bri_dev时, 必须填Imei字段.
    ///
    /// 当业务名为bri_ip时，必须填IP字段.
    ///
    /// 当业务名为bri_apk时，必须填 (PackageName,CertMd5,FileSize) 三个字段 或者 FileMd5一个字段.
    ///
    /// 当业务名为bri_url时，必须填Url字段.
    ///
    /// 当业务名为bri_social时，必须填QQ和Wechat字段两者其中一个或者两个.
    @inlinable
    public func describeBRI(_ input: DescribeBRIRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBRIResponse {
        try await self.client.execute(action: "DescribeBRI", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取业务风险情报
    ///
    /// 输入业务名 (bri_num, bri_dev, bri_ip, bri_apk, bri_url, bri_social 六种之一)  及其 相应字段, 获取业务风险分数和标签。
    ///
    /// 当业务名为bri_num时，必须填PhoneNumber字段.
    ///
    /// 当业务名为bri_dev时, 必须填Imei字段.
    ///
    /// 当业务名为bri_ip时，必须填IP字段.
    ///
    /// 当业务名为bri_apk时，必须填 (PackageName,CertMd5,FileSize) 三个字段 或者 FileMd5一个字段.
    ///
    /// 当业务名为bri_url时，必须填Url字段.
    ///
    /// 当业务名为bri_social时，必须填QQ和Wechat字段两者其中一个或者两个.
    @inlinable
    public func describeBRI(requestData: BRIRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBRIResponse> {
        self.describeBRI(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取业务风险情报
    ///
    /// 输入业务名 (bri_num, bri_dev, bri_ip, bri_apk, bri_url, bri_social 六种之一)  及其 相应字段, 获取业务风险分数和标签。
    ///
    /// 当业务名为bri_num时，必须填PhoneNumber字段.
    ///
    /// 当业务名为bri_dev时, 必须填Imei字段.
    ///
    /// 当业务名为bri_ip时，必须填IP字段.
    ///
    /// 当业务名为bri_apk时，必须填 (PackageName,CertMd5,FileSize) 三个字段 或者 FileMd5一个字段.
    ///
    /// 当业务名为bri_url时，必须填Url字段.
    ///
    /// 当业务名为bri_social时，必须填QQ和Wechat字段两者其中一个或者两个.
    @inlinable
    public func describeBRI(requestData: BRIRequest, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBRIResponse {
        try await self.describeBRI(.init(requestData: requestData, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
