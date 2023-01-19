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

extension Tds {
    /// DescribeTrustedID请求参数结构体
    public struct DescribeTrustedIDRequest: TCRequestModel {
        /// 客户端通过SDK获取的设备Token
        public let deviceToken: String

        public init(deviceToken: String) {
            self.deviceToken = deviceToken
        }

        enum CodingKeys: String, CodingKey {
            case deviceToken = "DeviceToken"
        }
    }

    /// DescribeTrustedID返回参数结构体
    public struct DescribeTrustedIDResponse: TCResponseModel {
        /// 设备匿名标识
        public let openid: String

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

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case openid = "Openid"
            case appVersion = "AppVersion"
            case brand = "Brand"
            case clientIp = "ClientIp"
            case model = "Model"
            case networkType = "NetworkType"
            case packageName = "PackageName"
            case platform = "Platform"
            case systemVersion = "SystemVersion"
            case sdkBuildNo = "SdkBuildNo"
            case requestId = "RequestId"
        }
    }

    /// 查询设备标识
    @inlinable
    public func describeTrustedID(_ input: DescribeTrustedIDRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedIDResponse> {
        self.client.execute(action: "DescribeTrustedID", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备标识
    @inlinable
    public func describeTrustedID(_ input: DescribeTrustedIDRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedIDResponse {
        try await self.client.execute(action: "DescribeTrustedID", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备标识
    @inlinable
    public func describeTrustedID(deviceToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedIDResponse> {
        self.describeTrustedID(DescribeTrustedIDRequest(deviceToken: deviceToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备标识
    @inlinable
    public func describeTrustedID(deviceToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedIDResponse {
        try await self.describeTrustedID(DescribeTrustedIDRequest(deviceToken: deviceToken), region: region, logger: logger, on: eventLoop)
    }
}
