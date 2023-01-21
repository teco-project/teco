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

extension Tcb {
    /// DescribeBaasPackageList请求参数结构体
    public struct DescribeBaasPackageListRequest: TCRequestModel {
        /// tcb产品套餐ID，不填拉取全量package信息。
        public let packageName: String?

        /// 环境ID
        public let envId: String?

        /// 套餐归属方，填写后只返回对应的套餐 包含miniapp与qcloud两种 默认为miniapp
        public let source: String?

        /// 套餐归属环境渠道
        public let envChannel: String?

        /// 拉取套餐用途：
        /// 1）new 新购
        /// 2）modify变配
        /// 3）renew续费
        public let targetAction: String?

        /// 预留字段，同一商品会对应多个类型套餐，对指标有不同侧重。
        /// 计算型calculation
        /// 流量型flux
        /// 容量型capactiy
        public let groupName: String?

        /// 类型分组过滤。默认为["default"]
        public let packageTypeList: [String]?

        /// 付费渠道，与回包billTags中的计费参数相关，不填返回默认值。
        public let paymentChannel: String?

        public init(packageName: String? = nil, envId: String? = nil, source: String? = nil, envChannel: String? = nil, targetAction: String? = nil, groupName: String? = nil, packageTypeList: [String]? = nil, paymentChannel: String? = nil) {
            self.packageName = packageName
            self.envId = envId
            self.source = source
            self.envChannel = envChannel
            self.targetAction = targetAction
            self.groupName = groupName
            self.packageTypeList = packageTypeList
            self.paymentChannel = paymentChannel
        }

        enum CodingKeys: String, CodingKey {
            case packageName = "PackageName"
            case envId = "EnvId"
            case source = "Source"
            case envChannel = "EnvChannel"
            case targetAction = "TargetAction"
            case groupName = "GroupName"
            case packageTypeList = "PackageTypeList"
            case paymentChannel = "PaymentChannel"
        }
    }

    /// DescribeBaasPackageList返回参数结构体
    public struct DescribeBaasPackageListResponse: TCResponseModel {
        /// 套餐列表
        public let packageList: [BaasPackageInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packageList = "PackageList"
            case requestId = "RequestId"
        }
    }

    /// 获取新套餐
    ///
    /// 获取新套餐列表，含详情，如果传了PackageId，则只获取指定套餐详情
    @inlinable
    public func describeBaasPackageList(_ input: DescribeBaasPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaasPackageListResponse> {
        self.client.execute(action: "DescribeBaasPackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取新套餐
    ///
    /// 获取新套餐列表，含详情，如果传了PackageId，则只获取指定套餐详情
    @inlinable
    public func describeBaasPackageList(_ input: DescribeBaasPackageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaasPackageListResponse {
        try await self.client.execute(action: "DescribeBaasPackageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取新套餐
    ///
    /// 获取新套餐列表，含详情，如果传了PackageId，则只获取指定套餐详情
    @inlinable
    public func describeBaasPackageList(packageName: String? = nil, envId: String? = nil, source: String? = nil, envChannel: String? = nil, targetAction: String? = nil, groupName: String? = nil, packageTypeList: [String]? = nil, paymentChannel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaasPackageListResponse> {
        self.describeBaasPackageList(DescribeBaasPackageListRequest(packageName: packageName, envId: envId, source: source, envChannel: envChannel, targetAction: targetAction, groupName: groupName, packageTypeList: packageTypeList, paymentChannel: paymentChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 获取新套餐
    ///
    /// 获取新套餐列表，含详情，如果传了PackageId，则只获取指定套餐详情
    @inlinable
    public func describeBaasPackageList(packageName: String? = nil, envId: String? = nil, source: String? = nil, envChannel: String? = nil, targetAction: String? = nil, groupName: String? = nil, packageTypeList: [String]? = nil, paymentChannel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaasPackageListResponse {
        try await self.describeBaasPackageList(DescribeBaasPackageListRequest(packageName: packageName, envId: envId, source: source, envChannel: envChannel, targetAction: targetAction, groupName: groupName, packageTypeList: packageTypeList, paymentChannel: paymentChannel), region: region, logger: logger, on: eventLoop)
    }
}
