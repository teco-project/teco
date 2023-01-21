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

extension TCSesError {
    public struct MissingParameter: TCSesErrorType {
        enum Code: String {
            case cycleParamNecessary = "MissingParameter.CycleParamNecessary"
            case emailsNecessary = "MissingParameter.EmailsNecessary"
            case receiverIdNecessary = "MissingParameter.ReceiverIdNecessary"
            case sendParamNecessary = "MissingParameter.SendParamNecessary"
            case timedParamNecessary = "MissingParameter.TimedParamNecessary"
            case other = "MissingParameter"
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

        /// 周期发送任务需选择开始时间和间隔时间。
        ///
        /// 周期发送任务需选择开始时间和间隔时间
        public static var cycleParamNecessary: MissingParameter {
            MissingParameter(.cycleParamNecessary)
        }

        /// 收件人地址必须传。
        ///
        /// 参数中补上收件人地址
        public static var emailsNecessary: MissingParameter {
            MissingParameter(.emailsNecessary)
        }

        /// 收件人列表Id必传。
        ///
        /// 收件人列表Id必传
        public static var receiverIdNecessary: MissingParameter {
            MissingParameter(.receiverIdNecessary)
        }

        /// 发件地址、收件人列表,发件模板必须传。
        public static var sendParamNecessary: MissingParameter {
            MissingParameter(.sendParamNecessary)
        }

        /// 定时发送任务需选择开始时间。
        ///
        /// 定时发送任务需选择开始时间
        public static var timedParamNecessary: MissingParameter {
            MissingParameter(.timedParamNecessary)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asSesError() -> TCSesError {
            let code: TCSesError.Code
            switch self.error {
            case .cycleParamNecessary:
                code = .missingParameter_CycleParamNecessary
            case .emailsNecessary:
                code = .missingParameter_EmailsNecessary
            case .receiverIdNecessary:
                code = .missingParameter_ReceiverIdNecessary
            case .sendParamNecessary:
                code = .missingParameter_SendParamNecessary
            case .timedParamNecessary:
                code = .missingParameter_TimedParamNecessary
            case .other:
                code = .missingParameter
            }
            return TCSesError(code, context: self.context)
        }
    }
}
