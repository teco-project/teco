//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Rce {
    /// ManageMarketingRisk请求参数结构体
    public struct ManageMarketingRiskRequest: TCRequestModel {
        /// 业务入参
        public let businessSecurityData: InputManageMarketingRisk?

        /// 业务入参
        public let businessCryptoData: InputCryptoManageMarketingRisk?

        public init(businessSecurityData: InputManageMarketingRisk? = nil, businessCryptoData: InputCryptoManageMarketingRisk? = nil) {
            self.businessSecurityData = businessSecurityData
            self.businessCryptoData = businessCryptoData
        }

        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
            case businessCryptoData = "BusinessCryptoData"
        }
    }

    /// ManageMarketingRisk返回参数结构体
    public struct ManageMarketingRiskResponse: TCResponseModel {
        /// 业务出参
        public let data: OutputManageMarketingRisk

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 全栈式风控引擎
    ///
    /// 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。
    @inlinable
    public func manageMarketingRisk(_ input: ManageMarketingRiskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ManageMarketingRiskResponse > {
        self.client.execute(action: "ManageMarketingRisk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 全栈式风控引擎
    ///
    /// 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。
    @inlinable
    public func manageMarketingRisk(_ input: ManageMarketingRiskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageMarketingRiskResponse {
        try await self.client.execute(action: "ManageMarketingRisk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 全栈式风控引擎
    ///
    /// 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。
    @inlinable
    public func manageMarketingRisk(businessSecurityData: InputManageMarketingRisk? = nil, businessCryptoData: InputCryptoManageMarketingRisk? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ManageMarketingRiskResponse > {
        self.manageMarketingRisk(ManageMarketingRiskRequest(businessSecurityData: businessSecurityData, businessCryptoData: businessCryptoData), logger: logger, on: eventLoop)
    }

    /// 全栈式风控引擎
    ///
    /// 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。
    @inlinable
    public func manageMarketingRisk(businessSecurityData: InputManageMarketingRisk? = nil, businessCryptoData: InputCryptoManageMarketingRisk? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageMarketingRiskResponse {
        try await self.manageMarketingRisk(ManageMarketingRiskRequest(businessSecurityData: businessSecurityData, businessCryptoData: businessCryptoData), logger: logger, on: eventLoop)
    }
}
