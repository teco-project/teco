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

extension Dbbrain {
    /// CreateSchedulerMailProfile请求参数结构体
    public struct CreateSchedulerMailProfileRequest: TCRequest {
        /// 取值范围1-7，分别代表周一至周日。
        public let weekConfiguration: [Int64]

        /// 邮件配置内容。
        public let profileInfo: ProfileInfo

        /// 配置名称，需要保持唯一性，定期生成邮件配置命名格式："scheduler_" + {instanceId}，如"schduler_cdb-test"。
        public let profileName: String

        /// 配置订阅的实例ID。
        public let bindInstanceId: String

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String

        public init(weekConfiguration: [Int64], profileInfo: ProfileInfo, profileName: String, bindInstanceId: String, product: String) {
            self.weekConfiguration = weekConfiguration
            self.profileInfo = profileInfo
            self.profileName = profileName
            self.bindInstanceId = bindInstanceId
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case weekConfiguration = "WeekConfiguration"
            case profileInfo = "ProfileInfo"
            case profileName = "ProfileName"
            case bindInstanceId = "BindInstanceId"
            case product = "Product"
        }
    }

    /// CreateSchedulerMailProfile返回参数结构体
    public struct CreateSchedulerMailProfileResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建定期生成的邮件发送配置
    ///
    /// 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。
    @inlinable @discardableResult
    public func createSchedulerMailProfile(_ input: CreateSchedulerMailProfileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchedulerMailProfileResponse> {
        self.client.execute(action: "CreateSchedulerMailProfile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建定期生成的邮件发送配置
    ///
    /// 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。
    @inlinable @discardableResult
    public func createSchedulerMailProfile(_ input: CreateSchedulerMailProfileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchedulerMailProfileResponse {
        try await self.client.execute(action: "CreateSchedulerMailProfile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建定期生成的邮件发送配置
    ///
    /// 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。
    @inlinable @discardableResult
    public func createSchedulerMailProfile(weekConfiguration: [Int64], profileInfo: ProfileInfo, profileName: String, bindInstanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchedulerMailProfileResponse> {
        self.createSchedulerMailProfile(.init(weekConfiguration: weekConfiguration, profileInfo: profileInfo, profileName: profileName, bindInstanceId: bindInstanceId, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 创建定期生成的邮件发送配置
    ///
    /// 该接口用于创建定期生成健康报告并邮件发送的配置，将健康报告的定期生成时间作为参数传入（周一至周日），用于设置健康报告的定期生成时间，同时保存相应的定期邮件发送的配置。
    @inlinable @discardableResult
    public func createSchedulerMailProfile(weekConfiguration: [Int64], profileInfo: ProfileInfo, profileName: String, bindInstanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchedulerMailProfileResponse {
        try await self.createSchedulerMailProfile(.init(weekConfiguration: weekConfiguration, profileInfo: profileInfo, profileName: profileName, bindInstanceId: bindInstanceId, product: product), region: region, logger: logger, on: eventLoop)
    }
}
