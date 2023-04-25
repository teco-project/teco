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

extension Lighthouse {
    /// DescribeGeneralResourceQuotas请求参数结构体
    public struct DescribeGeneralResourceQuotasRequest: TCRequestModel {
        /// 资源名列表，可取值:
        /// - GENERAL_BUNDLE_INSTANCE 通用型套餐实例
        /// - STORAGE_BUNDLE_INSTANCE 存储型套餐实例
        /// - ENTERPRISE_BUNDLE_INSTANCE 企业型套餐实例
        /// - EXCLUSIVE_BUNDLE_INSTANCE 专属型套餐实例
        /// - BEFAST_BUNDLE_INSTANCE 蜂驰型套餐实例
        /// - USER_KEY_PAIR 密钥对
        /// - SNAPSHOT 快照
        /// - BLUEPRINT 自定义镜像
        /// - FREE_BLUEPRINT 免费自定义镜像
        /// - DATA_DISK 数据盘
        /// - FIREWALL_RULE 防火墙规则
        public let resourceNames: [String]

        public init(resourceNames: [String]) {
            self.resourceNames = resourceNames
        }

        enum CodingKeys: String, CodingKey {
            case resourceNames = "ResourceNames"
        }
    }

    /// DescribeGeneralResourceQuotas返回参数结构体
    public struct DescribeGeneralResourceQuotasResponse: TCResponseModel {
        /// 通用资源配额详细信息列表。
        public let generalResourceQuotaSet: [GeneralResourceQuota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case generalResourceQuotaSet = "GeneralResourceQuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询通用资源配额信息
    ///
    /// 本接口（DescribeGeneralResourceQuotas）用于查询通用资源配额信息。
    @inlinable
    public func describeGeneralResourceQuotas(_ input: DescribeGeneralResourceQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGeneralResourceQuotasResponse> {
        self.client.execute(action: "DescribeGeneralResourceQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通用资源配额信息
    ///
    /// 本接口（DescribeGeneralResourceQuotas）用于查询通用资源配额信息。
    @inlinable
    public func describeGeneralResourceQuotas(_ input: DescribeGeneralResourceQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralResourceQuotasResponse {
        try await self.client.execute(action: "DescribeGeneralResourceQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通用资源配额信息
    ///
    /// 本接口（DescribeGeneralResourceQuotas）用于查询通用资源配额信息。
    @inlinable
    public func describeGeneralResourceQuotas(resourceNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGeneralResourceQuotasResponse> {
        self.describeGeneralResourceQuotas(.init(resourceNames: resourceNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通用资源配额信息
    ///
    /// 本接口（DescribeGeneralResourceQuotas）用于查询通用资源配额信息。
    @inlinable
    public func describeGeneralResourceQuotas(resourceNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralResourceQuotasResponse {
        try await self.describeGeneralResourceQuotas(.init(resourceNames: resourceNames), region: region, logger: logger, on: eventLoop)
    }
}
