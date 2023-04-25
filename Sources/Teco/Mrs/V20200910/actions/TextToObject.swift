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

extension Mrs {
    /// TextToObject请求参数结构体
    public struct TextToObjectRequest: TCRequestModel {
        /// 报告文本
        public let text: String

        /// 报告类型，目前支持12（检查报告），15（病理报告），28（出院报告），29（入院报告），210（门诊病历），212（手术记录），218（诊断证明），363（心电图），27（内窥镜检查），215（处方单），219（免疫接种证明），301（C14呼气试验）。如果不清楚报告类型，可以使用分类引擎，该字段传0（同时IsUsedClassify字段必须为True，否则无法输出结果）
        public let type: UInt64

        /// 是否使用分类引擎，当不确定报告类型时，可以使用收费的报告分类引擎服务。若该字段为False，则Type字段不能为0，否则无法输出结果。
        /// 注意：当 IsUsedClassify 为True 时，表示使用收费的报告分类服务，将会产生额外的费用，具体收费标准参见 [购买指南的产品价格](https://cloud.tencent.com/document/product/1314/54264)。
        public let isUsedClassify: Bool

        /// 后付费的用户类型，新客户传1，老客户可不传或传 0。2022 年 12 月 15 新增了计费项，在此时间之前已经通过商务指定优惠价格的大客户，请不传这个字段或传 0，如果传 1 会导致以前获得的折扣价格失效。在 2022 年 12 月 15 日之后，通过商务指定优惠价格的大客户请传 1。
        public let userType: UInt64?

        /// 可选。用于指定不同报告使用的结构化引擎版本，不同版本返回的JSON 数据结果不兼容。若不指定版本号，就默认用旧的版本号。
        /// （1）检验报告 11，默认使用 V2，最高支持 V3。
        /// （2）病理报告 15，默认使用 V1，最高支持 V2。
        /// （3）入院记录29、出院记录 28、病理记录 216、病程记录 217、门诊记录 210，默认使用 V1，最高支持 V2。
        public let reportTypeVersion: [ReportTypeVersion]?

        public init(text: String, type: UInt64, isUsedClassify: Bool, userType: UInt64? = nil, reportTypeVersion: [ReportTypeVersion]? = nil) {
            self.text = text
            self.type = type
            self.isUsedClassify = isUsedClassify
            self.userType = userType
            self.reportTypeVersion = reportTypeVersion
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case type = "Type"
            case isUsedClassify = "IsUsedClassify"
            case userType = "UserType"
            case reportTypeVersion = "ReportTypeVersion"
        }
    }

    /// TextToObject返回参数结构体
    public struct TextToObjectResponse: TCResponseModel {
        /// 报告结构化结果
        public let template: Template

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case template = "Template"
            case requestId = "RequestId"
        }
    }

    /// 文本结构化接口
    ///
    /// 文本转结构化对象。
    ///
    /// 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。
    @inlinable
    public func textToObject(_ input: TextToObjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToObjectResponse> {
        self.client.execute(action: "TextToObject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本结构化接口
    ///
    /// 文本转结构化对象。
    ///
    /// 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。
    @inlinable
    public func textToObject(_ input: TextToObjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToObjectResponse {
        try await self.client.execute(action: "TextToObject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本结构化接口
    ///
    /// 文本转结构化对象。
    ///
    /// 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。
    @inlinable
    public func textToObject(text: String, type: UInt64, isUsedClassify: Bool, userType: UInt64? = nil, reportTypeVersion: [ReportTypeVersion]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToObjectResponse> {
        self.textToObject(.init(text: text, type: type, isUsedClassify: isUsedClassify, userType: userType, reportTypeVersion: reportTypeVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 文本结构化接口
    ///
    /// 文本转结构化对象。
    ///
    /// 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。
    @inlinable
    public func textToObject(text: String, type: UInt64, isUsedClassify: Bool, userType: UInt64? = nil, reportTypeVersion: [ReportTypeVersion]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToObjectResponse {
        try await self.textToObject(.init(text: text, type: type, isUsedClassify: isUsedClassify, userType: userType, reportTypeVersion: reportTypeVersion), region: region, logger: logger, on: eventLoop)
    }
}
