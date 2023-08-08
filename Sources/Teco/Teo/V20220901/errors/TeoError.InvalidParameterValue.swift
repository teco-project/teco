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

extension TCTeoError {
    public struct InvalidParameterValue: TCTeoErrorType {
        enum Code: String {
            case conflictRecord = "InvalidParameterValue.ConflictRecord"
            case conflictWithDNSSEC = "InvalidParameterValue.ConflictWithDNSSEC"
            case conflictWithNSRecord = "InvalidParameterValue.ConflictWithNSRecord"
            case contentSameAsName = "InvalidParameterValue.ContentSameAsName"
            case domainNotMatchZone = "InvalidParameterValue.DomainNotMatchZone"
            case invalidDNSContent = "InvalidParameterValue.InvalidDNSContent"
            case invalidDNSName = "InvalidParameterValue.InvalidDNSName"
            case invalidDomainStatus = "InvalidParameterValue.InvalidDomainStatus"
            case zoneSameAsName = "InvalidParameterValue.ZoneSameAsName"
            case other = "InvalidParameterValue"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 与已经添加的记录冲突。
        public static var conflictRecord: InvalidParameterValue {
            InvalidParameterValue(.conflictRecord)
        }

        /// DNS 记录与 DNSSEC 功能冲突。
        public static var conflictWithDNSSEC: InvalidParameterValue {
            InvalidParameterValue(.conflictWithDNSSEC)
        }

        /// DNS 记录与 NS 记录冲突。
        public static var conflictWithNSRecord: InvalidParameterValue {
            InvalidParameterValue(.conflictWithNSRecord)
        }

        /// 主机记录与记录值不能取值相同。
        public static var contentSameAsName: InvalidParameterValue {
            InvalidParameterValue(.contentSameAsName)
        }

        /// 入参中的域名与站点参数不匹配，请更正后重试。
        public static var domainNotMatchZone: InvalidParameterValue {
            InvalidParameterValue(.domainNotMatchZone)
        }

        /// DNS 记录内容错误。
        public static var invalidDNSContent: InvalidParameterValue {
            InvalidParameterValue(.invalidDNSContent)
        }

        /// DNS 记录名称错误。
        public static var invalidDNSName: InvalidParameterValue {
            InvalidParameterValue(.invalidDNSName)
        }

        /// 加速域名状态不符合要求。
        public static var invalidDomainStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidDomainStatus)
        }

        /// 该同名站点标识已被占用，请重新输入。
        ///
        /// 同名站点标识已被使用，用户需重新输入不一样的
        public static var zoneSameAsName: InvalidParameterValue {
            InvalidParameterValue(.zoneSameAsName)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .conflictRecord:
                code = .invalidParameterValue_ConflictRecord
            case .conflictWithDNSSEC:
                code = .invalidParameterValue_ConflictWithDNSSEC
            case .conflictWithNSRecord:
                code = .invalidParameterValue_ConflictWithNSRecord
            case .contentSameAsName:
                code = .invalidParameterValue_ContentSameAsName
            case .domainNotMatchZone:
                code = .invalidParameterValue_DomainNotMatchZone
            case .invalidDNSContent:
                code = .invalidParameterValue_InvalidDNSContent
            case .invalidDNSName:
                code = .invalidParameterValue_InvalidDNSName
            case .invalidDomainStatus:
                code = .invalidParameterValue_InvalidDomainStatus
            case .zoneSameAsName:
                code = .invalidParameterValue_ZoneSameAsName
            case .other:
                code = .invalidParameterValue
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
