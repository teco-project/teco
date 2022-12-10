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

extension Faceid {
    /// 手机号实名查询
    ///
    /// 通过传入手机号或姓名和身份证号，结合权威数据源和腾讯健康守护可信模型，判断该信息是否真实且年满18周岁。腾讯健康守护可信模型覆盖了上十亿手机库源，覆盖率高、准确率高，如果不在库中的手机号，还可以通过姓名+身份证进行兜底验证。
    @inlinable
    public func minorsVerification(_ input: MinorsVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < MinorsVerificationResponse > {
        self.client.execute(action: "MinorsVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 手机号实名查询
    ///
    /// 通过传入手机号或姓名和身份证号，结合权威数据源和腾讯健康守护可信模型，判断该信息是否真实且年满18周岁。腾讯健康守护可信模型覆盖了上十亿手机库源，覆盖率高、准确率高，如果不在库中的手机号，还可以通过姓名+身份证进行兜底验证。
    @inlinable
    public func minorsVerification(_ input: MinorsVerificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MinorsVerificationResponse {
        try await self.client.execute(action: "MinorsVerification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// MinorsVerification请求参数结构体
    public struct MinorsVerificationRequest: TCRequestModel {
        /// 参与校验的参数类型。
        /// 0：使用手机号进行校验；
        /// 1：使用姓名与身份证号进行校验。
        public let type: String
        
        /// 手机号，11位数字，
        /// 特别提示：
        /// 手机号验证只限制在腾讯健康守护可信模型覆盖的数据范围内，与手机号本身在运营商是否实名无关联，不在范围会提示“手机号未实名”，建议客户与传入姓名和身份证号信息组合使用。
        public let mobile: String?
        
        /// 身份证号码。
        public let idCard: String?
        
        /// 姓名。
        public let name: String?
        
        /// 敏感数据加密信息。对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption
        
        public init (type: String, mobile: String?, idCard: String?, name: String?, encryption: Encryption) {
            self.type = type
            self.mobile = mobile
            self.idCard = idCard
            self.name = name
            self.encryption = encryption
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case mobile = "Mobile"
            case idCard = "IdCard"
            case name = "Name"
            case encryption = "Encryption"
        }
    }
    
    /// MinorsVerification返回参数结构体
    public struct MinorsVerificationResponse: TCResponseModel {
        /// 结果码，收费情况如下。
        /// 收费结果码：
        /// 0: 成年
        /// -1: 未成年
        /// -3: 姓名和身份证号不一致
        /// 不收费结果码：
        /// -2: 未查询到手机号信息
        /// -4: 非法身份证号（长度、校验位等不正确）
        /// -5: 非法姓名（长度、格式等不正确）
        /// -6: 权威数据源服务异常
        /// -7: 未查询到身份信息
        /// -8: 权威数据源升级中，请稍后再试
        public let result: String
        
        /// 业务结果描述。
        public let description: String
        
        /// 该字段的值为年龄区间。格式为[a,b)，
        /// [0,8)表示年龄小于8周岁区间，不包括8岁；
        /// [8,16)表示年龄8-16周岁区间，不包括16岁；
        /// [16,18)表示年龄16-18周岁区间，不包括18岁；
        /// [18,+)表示年龄大于18周岁。
        public let ageRange: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case ageRange = "AgeRange"
            case requestId = "RequestId"
        }
    }
}
