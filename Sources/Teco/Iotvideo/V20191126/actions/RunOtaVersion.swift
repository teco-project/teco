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

extension Iotvideo {
    /// RunOtaVersion请求参数结构体
    public struct RunOtaVersionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        public let otaVersion: String

        /// 灰度值,取值范围0-100，为0时相当于暂停发布
        public let grayValue: UInt64

        /// 指定的旧版本
        public let oldVersions: [String]?

        /// 操作人
        public let `operator`: String?

        /// 备注信息
        public let remark: String?

        /// 版本发布的描述信息，需要国际化，可以为空
        public let contents: Contents?

        public init(productId: String, otaVersion: String, grayValue: UInt64, oldVersions: [String]? = nil, operator: String? = nil, remark: String? = nil, contents: Contents? = nil) {
            self.productId = productId
            self.otaVersion = otaVersion
            self.grayValue = grayValue
            self.oldVersions = oldVersions
            self.operator = `operator`
            self.remark = remark
            self.contents = contents
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case grayValue = "GrayValue"
            case oldVersions = "OldVersions"
            case `operator` = "Operator"
            case remark = "Remark"
            case contents = "Contents"
        }
    }

    /// RunOtaVersion返回参数结构体
    public struct RunOtaVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable @discardableResult
    public func runOtaVersion(_ input: RunOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunOtaVersionResponse> {
        self.client.execute(action: "RunOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable @discardableResult
    public func runOtaVersion(_ input: RunOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunOtaVersionResponse {
        try await self.client.execute(action: "RunOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable @discardableResult
    public func runOtaVersion(productId: String, otaVersion: String, grayValue: UInt64, oldVersions: [String]? = nil, operator: String? = nil, remark: String? = nil, contents: Contents? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunOtaVersionResponse> {
        let input = RunOtaVersionRequest(productId: productId, otaVersion: otaVersion, grayValue: grayValue, oldVersions: oldVersions, operator: `operator`, remark: remark, contents: contents)
        return self.client.execute(action: "RunOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable @discardableResult
    public func runOtaVersion(productId: String, otaVersion: String, grayValue: UInt64, oldVersions: [String]? = nil, operator: String? = nil, remark: String? = nil, contents: Contents? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunOtaVersionResponse {
        let input = RunOtaVersionRequest(productId: productId, otaVersion: otaVersion, grayValue: grayValue, oldVersions: oldVersions, operator: `operator`, remark: remark, contents: contents)
        return try await self.client.execute(action: "RunOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
