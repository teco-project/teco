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

extension Ms {
    /// DescribeApkDetectionResult请求参数结构体
    public struct DescribeApkDetectionResultRequest: TCRequest {
        /// 软件包的下载链接
        public let apkUrl: String

        /// 软件包的md5值，具有唯一性。腾讯APK云检测服务会根据md5值来判断该包是否为库中已收集的样本，已存在，则返回检测结果，反之，需要一定时间检测该样本。
        public let apkMd5: String

        public init(apkUrl: String, apkMd5: String) {
            self.apkUrl = apkUrl
            self.apkMd5 = apkMd5
        }

        enum CodingKeys: String, CodingKey {
            case apkUrl = "ApkUrl"
            case apkMd5 = "ApkMd5"
        }
    }

    /// DescribeApkDetectionResult返回参数结构体
    public struct DescribeApkDetectionResultResponse: TCResponse {
        /// 响应结果，ok表示正常，error表示错误
        public let result: String

        /// Result为error错误时的原因说明
        public let reason: String

        /// APK检测结果数组
        public let resultList: [ResultListItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case reason = "Reason"
            case resultList = "ResultList"
            case requestId = "RequestId"
        }
    }

    /// 环境安全检测-apk检测
    ///
    /// 该接口采用同步模式请求腾讯APK云检测服务，即时返回检测数据，需要用户用轮询的方式调用本接口来进行样本送检并获取检测结果(每隔60s发送一次请求，传相同的参数，重试30次)，一般情况下0.5h内会出检测结果，最长时间是3h。当Result为ok并且ResultList数组非空有值时，代表检测完毕，若长时间获取不到检测结果，请联系客服。
    @inlinable
    public func describeApkDetectionResult(_ input: DescribeApkDetectionResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApkDetectionResultResponse> {
        self.client.execute(action: "DescribeApkDetectionResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 环境安全检测-apk检测
    ///
    /// 该接口采用同步模式请求腾讯APK云检测服务，即时返回检测数据，需要用户用轮询的方式调用本接口来进行样本送检并获取检测结果(每隔60s发送一次请求，传相同的参数，重试30次)，一般情况下0.5h内会出检测结果，最长时间是3h。当Result为ok并且ResultList数组非空有值时，代表检测完毕，若长时间获取不到检测结果，请联系客服。
    @inlinable
    public func describeApkDetectionResult(_ input: DescribeApkDetectionResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApkDetectionResultResponse {
        try await self.client.execute(action: "DescribeApkDetectionResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 环境安全检测-apk检测
    ///
    /// 该接口采用同步模式请求腾讯APK云检测服务，即时返回检测数据，需要用户用轮询的方式调用本接口来进行样本送检并获取检测结果(每隔60s发送一次请求，传相同的参数，重试30次)，一般情况下0.5h内会出检测结果，最长时间是3h。当Result为ok并且ResultList数组非空有值时，代表检测完毕，若长时间获取不到检测结果，请联系客服。
    @inlinable
    public func describeApkDetectionResult(apkUrl: String, apkMd5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApkDetectionResultResponse> {
        self.describeApkDetectionResult(.init(apkUrl: apkUrl, apkMd5: apkMd5), region: region, logger: logger, on: eventLoop)
    }

    /// 环境安全检测-apk检测
    ///
    /// 该接口采用同步模式请求腾讯APK云检测服务，即时返回检测数据，需要用户用轮询的方式调用本接口来进行样本送检并获取检测结果(每隔60s发送一次请求，传相同的参数，重试30次)，一般情况下0.5h内会出检测结果，最长时间是3h。当Result为ok并且ResultList数组非空有值时，代表检测完毕，若长时间获取不到检测结果，请联系客服。
    @inlinable
    public func describeApkDetectionResult(apkUrl: String, apkMd5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApkDetectionResultResponse {
        try await self.describeApkDetectionResult(.init(apkUrl: apkUrl, apkMd5: apkMd5), region: region, logger: logger, on: eventLoop)
    }
}
