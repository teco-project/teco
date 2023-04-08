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

extension Ocr {
    /// VerifyEnterpriseFourFactors请求参数结构体
    public struct VerifyEnterpriseFourFactorsRequest: TCRequestModel {
        /// 姓名
        public let realName: String

        /// 证件号码（公司注册证件号）
        public let idCard: String

        /// 企业全称
        public let enterpriseName: String

        /// 企业标识（注册号，统一社会信用代码）
        public let enterpriseMark: String

        public init(realName: String, idCard: String, enterpriseName: String, enterpriseMark: String) {
            self.realName = realName
            self.idCard = idCard
            self.enterpriseName = enterpriseName
            self.enterpriseMark = enterpriseMark
        }

        enum CodingKeys: String, CodingKey {
            case realName = "RealName"
            case idCard = "IdCard"
            case enterpriseName = "EnterpriseName"
            case enterpriseMark = "EnterpriseMark"
        }
    }

    /// VerifyEnterpriseFourFactors返回参数结构体
    public struct VerifyEnterpriseFourFactorsResponse: TCResponseModel {
        /// 核验一致性（1:一致，2:不一致，3:查询无记录）
        public let state: Int64

        /// 核验结果明细，7：企业法人/负责人，6：企业股东，5：企
        /// 业管理人员，-21：企业名称与企业标识不符，-22：姓名不一致，-23：证件号码不一致，-24：企业名称不一致，-25：企业标识不一致
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detail: Detail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case state = "State"
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 企业四要素核验
    ///
    /// 此接口基于企业四要素授权“姓名、证件号码、企业标识、企业全称”，验证企业信息是否一致。
    @available(*, unavailable, message: "库源服务调整，该接口在2023年6月1日将正式下线。")
    @inlinable
    public func verifyEnterpriseFourFactors(_ input: VerifyEnterpriseFourFactorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyEnterpriseFourFactorsResponse> {
        fatalError("VerifyEnterpriseFourFactors is no longer available.")
    }

    /// 企业四要素核验
    ///
    /// 此接口基于企业四要素授权“姓名、证件号码、企业标识、企业全称”，验证企业信息是否一致。
    @available(*, unavailable, message: "库源服务调整，该接口在2023年6月1日将正式下线。")
    @inlinable
    public func verifyEnterpriseFourFactors(_ input: VerifyEnterpriseFourFactorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyEnterpriseFourFactorsResponse {
        fatalError("VerifyEnterpriseFourFactors is no longer available.")
    }

    /// 企业四要素核验
    ///
    /// 此接口基于企业四要素授权“姓名、证件号码、企业标识、企业全称”，验证企业信息是否一致。
    @available(*, unavailable, message: "库源服务调整，该接口在2023年6月1日将正式下线。")
    @inlinable
    public func verifyEnterpriseFourFactors(realName: String, idCard: String, enterpriseName: String, enterpriseMark: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyEnterpriseFourFactorsResponse> {
        fatalError("VerifyEnterpriseFourFactors is no longer available.")
    }

    /// 企业四要素核验
    ///
    /// 此接口基于企业四要素授权“姓名、证件号码、企业标识、企业全称”，验证企业信息是否一致。
    @available(*, unavailable, message: "库源服务调整，该接口在2023年6月1日将正式下线。")
    @inlinable
    public func verifyEnterpriseFourFactors(realName: String, idCard: String, enterpriseName: String, enterpriseMark: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyEnterpriseFourFactorsResponse {
        fatalError("VerifyEnterpriseFourFactors is no longer available.")
    }
}
