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

extension Tem {
    /// DescribeDeployApplicationDetail请求参数结构体
    public struct DescribeDeployApplicationDetailRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String?

        /// 环境id
        public let environmentId: String?

        /// 版本部署id
        public let versionId: String?

        public init(applicationId: String? = nil, environmentId: String? = nil, versionId: String? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.versionId = versionId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case versionId = "VersionId"
        }
    }

    /// DescribeDeployApplicationDetail返回参数结构体
    public struct DescribeDeployApplicationDetailResponse: TCResponseModel {
        /// 分批发布结果详情
        public let result: TemDeployApplicationDetailInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取分批发布详情
    @inlinable
    public func describeDeployApplicationDetail(_ input: DescribeDeployApplicationDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeployApplicationDetailResponse> {
        self.client.execute(action: "DescribeDeployApplicationDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分批发布详情
    @inlinable
    public func describeDeployApplicationDetail(_ input: DescribeDeployApplicationDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeployApplicationDetailResponse {
        try await self.client.execute(action: "DescribeDeployApplicationDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分批发布详情
    @inlinable
    public func describeDeployApplicationDetail(applicationId: String? = nil, environmentId: String? = nil, versionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeployApplicationDetailResponse> {
        self.describeDeployApplicationDetail(.init(applicationId: applicationId, environmentId: environmentId, versionId: versionId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分批发布详情
    @inlinable
    public func describeDeployApplicationDetail(applicationId: String? = nil, environmentId: String? = nil, versionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeployApplicationDetailResponse {
        try await self.describeDeployApplicationDetail(.init(applicationId: applicationId, environmentId: environmentId, versionId: versionId), region: region, logger: logger, on: eventLoop)
    }
}
