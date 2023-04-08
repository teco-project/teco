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

extension Tds {
    /// DescribeFraudBase请求参数结构体
    public struct DescribeFraudBaseRequest: TCRequestModel {
        /// 客户端通过SDK获取的设备Token
        public let deviceToken: String

        public init(deviceToken: String) {
            self.deviceToken = deviceToken
        }

        enum CodingKeys: String, CodingKey {
            case deviceToken = "DeviceToken"
        }
    }

    /// DescribeFraudBase返回参数结构体
    public struct DescribeFraudBaseResponse: TCResponseModel {
        /// App版本信息
        public let appVersion: String

        /// 品牌
        public let brand: String

        /// 客户端IP
        public let clientIp: String

        /// 机型
        public let model: String

        /// 网络类型
        public let networkType: String

        /// 应用包名
        public let packageName: String

        /// 平台（2-Android，3-iOS，4-H5，5-微信小程序）
        public let platform: String

        /// 系统版本
        public let systemVersion: String

        /// SDK版本号
        public let sdkBuildNo: String

        /// 实时风险信息
        public let riskInfos: [RiskInfo]

        /// 离线风险信息
        public let histRiskInfos: [RiskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appVersion = "AppVersion"
            case brand = "Brand"
            case clientIp = "ClientIp"
            case model = "Model"
            case networkType = "NetworkType"
            case packageName = "PackageName"
            case platform = "Platform"
            case systemVersion = "SystemVersion"
            case sdkBuildNo = "SdkBuildNo"
            case riskInfos = "RiskInfos"
            case histRiskInfos = "HistRiskInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询设备风险
    @inlinable
    public func describeFraudBase(_ input: DescribeFraudBaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFraudBaseResponse> {
        self.client.execute(action: "DescribeFraudBase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备风险
    @inlinable
    public func describeFraudBase(_ input: DescribeFraudBaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFraudBaseResponse {
        try await self.client.execute(action: "DescribeFraudBase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备风险
    @inlinable
    public func describeFraudBase(deviceToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFraudBaseResponse> {
        self.describeFraudBase(.init(deviceToken: deviceToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备风险
    @inlinable
    public func describeFraudBase(deviceToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFraudBaseResponse {
        try await self.describeFraudBase(.init(deviceToken: deviceToken), region: region, logger: logger, on: eventLoop)
    }
}
